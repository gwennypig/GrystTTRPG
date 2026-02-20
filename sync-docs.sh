#!/usr/bin/env bash
#
# Sync TTRPG documentation from Obsidian vault to docs folder
# Automatically links terms to their Codex entries
#

set -e

OBSIDIAN_SOURCE="/home/gwen/Gwenny/TTRPG Project"
DOCS_TARGET="/home/gwen/dev/GrystTTRPG/docs"
CODEX_SOURCE="/home/gwen/dev/GrystTTRPGMASTER/MASTERCODEX"

echo "📚 Syncing Gryst TTRPG documentation..."

# Clean existing content (except docsify files and codex)
find "$DOCS_TARGET" -mindepth 1 -maxdepth 1 \
  ! -name 'index.html' \
  ! -name '_sidebar.md' \
  ! -name 'README.md' \
  ! -name '.nojekyll' \
  ! -name 'codex' \
  ! -name 'raw.txt' \
  -exec rm -rf {} +

# Function to slugify folder/file names
slugify() {
  echo "$1" | sed -E 's/^[0-9]+ - //' | tr ' ' '-' | tr '[:upper:]' '[:lower:]'
}

# Process each folder
for folder in "$OBSIDIAN_SOURCE"/*/; do
  [ -d "$folder" ] || continue
  
  folder_name=$(basename "$folder")
  slug=$(slugify "$folder_name")
  target_dir="$DOCS_TARGET/$slug"
  
  mkdir -p "$target_dir"
  
  # Copy markdown files
  for file in "$folder"*.md; do
    [ -f "$file" ] || continue
    filename=$(basename "$file")
    new_filename=$(echo "$filename" | tr ' ' '-')
    cp "$file" "$target_dir/$new_filename"
    echo "  ✓ $slug/$new_filename"
  done
  
  # Handle nested folders
  for subfolder in "$folder"*/; do
    [ -d "$subfolder" ] || continue
    
    subfolder_name=$(basename "$subfolder")
    sub_slug=$(slugify "$subfolder_name")
    sub_target="$target_dir/$sub_slug"
    
    mkdir -p "$sub_target"
    
    for file in "$subfolder"*.md; do
      [ -f "$file" ] || continue
      filename=$(basename "$file")
      new_filename=$(echo "$filename" | tr ' ' '-')
      cp "$file" "$sub_target/$new_filename"
      echo "  ✓ $slug/$sub_slug/$new_filename"
    done
  done
done

echo ""
echo "✅ Sync complete!"

# === HOTSWAP TERMS WITH CODEX LINKS ===
echo ""
echo "🔗 Linking terms to Codex entries..."

# Build sed replacement commands from MASTERCODEX
SED_SCRIPT=$(mktemp)

# Find the active bundle
for bundle_dir in "$CODEX_SOURCE"/*/; do
  [ -d "$bundle_dir" ] || continue
  bundle_name=$(basename "$bundle_dir")
  
  for version_dir in "$bundle_dir"*/; do
    [ -d "$version_dir" ] || continue
    [ -f "$version_dir/manifest.json" ] || continue
    
    # Load dictionary terms
    if [ -d "$version_dir/dictionary" ]; then
      for dict_file in "$version_dir/dictionary"/*.json; do
        [ -f "$dict_file" ] || continue
        name=$(jq -r '.name' "$dict_file")
        color=$(jq -r '.color // ""' "$dict_file")
        anchor=$(echo "$name" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-//' | sed 's/-$//')
        
        # Skip very short terms to avoid false matches
        [ ${#name} -lt 3 ] && continue
        
        # Create replacement - with color if available
        if [ -n "$color" ]; then
          replacement="[<span style=\"color:$color\">$name<\/span>](codex\/$bundle_name\/Dictionary.md#$anchor)"
        else
          replacement="[$name](codex\/$bundle_name\/Dictionary.md#$anchor)"
        fi
        
        # Add sed command - replace whole word, not in headers or existing links
        # Use word boundaries and avoid lines starting with # or containing the term in []
        echo "s/\\b$name\\b/$replacement/g" >> "$SED_SCRIPT"
      done
    fi
    
    # Load tags
    if [ -d "$version_dir/tags" ]; then
      for tag_file in "$version_dir/tags"/*.json; do
        [ -f "$tag_file" ] || continue
        name=$(jq -r '.name' "$tag_file")
        color=$(jq -r '.color // ""' "$tag_file")
        anchor=$(echo "$name" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-//' | sed 's/-$//')
        
        [ ${#name} -lt 3 ] && continue
        
        if [ -n "$color" ]; then
          replacement="[<span style=\"color:$color\">\\[$name\\]<\/span>](codex\/$bundle_name\/Tags.md#$anchor)"
        else
          replacement="[\\[$name\\]](codex\/$bundle_name\/Tags.md#$anchor)"
        fi
        
        # Tags are wrapped in [] so match that pattern
        echo "s/\\[$name\\]/$replacement/g" >> "$SED_SCRIPT"
      done
    fi
  done
done

# Process each markdown file
linked_count=0
for md_file in $(find "$DOCS_TARGET" -name "*.md" -type f ! -path "*/codex/*" ! -name "README.md" ! -name "_sidebar.md"); do
  # Create temp file for processing
  tmp_file=$(mktemp)
  in_code_block=false
  
  # Process line by line - skip headers, code blocks, and existing links
  while IFS= read -r line || [ -n "$line" ]; do
    # Track code block state (```)
    if [[ "$line" =~ ^\`\`\` ]]; then
      if [ "$in_code_block" = true ]; then
        in_code_block=false
      else
        in_code_block=true
      fi
      echo "$line" >> "$tmp_file"
      continue
    fi
    
    # Skip if inside code block
    if [ "$in_code_block" = true ]; then
      echo "$line" >> "$tmp_file"
      continue
    fi
    
    # Skip header lines (start with #)
    if [[ "$line" =~ ^#+ ]]; then
      echo "$line" >> "$tmp_file"
      continue
    fi
    
    # Skip table header/separator lines
    if [[ "$line" =~ ^\|.*\|$ ]] && [[ "$line" =~ ^[\|\-\:\s]+$ ]]; then
      echo "$line" >> "$tmp_file"
      continue
    fi
    
    # Apply all replacements
    modified_line=$(echo "$line" | sed -f "$SED_SCRIPT" 2>/dev/null || echo "$line")
    echo "$modified_line" >> "$tmp_file"
  done < "$md_file"
  
  # Check if anything changed
  if ! diff -q "$md_file" "$tmp_file" > /dev/null 2>&1; then
    mv "$tmp_file" "$md_file"
    ((linked_count++)) || true
  else
    rm "$tmp_file"
  fi
done

rm -f "$SED_SCRIPT"

echo "  ✓ Processed docs, linked terms in $linked_count files"

# Generate raw document
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
if [ -f "$SCRIPT_DIR/generate-raw-doc.sh" ]; then
  chmod +x "$SCRIPT_DIR/generate-raw-doc.sh"
  "$SCRIPT_DIR/generate-raw-doc.sh" "$DOCS_TARGET"
fi

echo ""
echo "Next steps:"
echo "  cd /home/gwen/dev/GrystTTRPG"
echo "  git add . && git commit -m 'Update docs' && git push"
echo ""
echo "Raw doc at: https://gwennypig.github.io/GrystTTRPG/raw.txt"
