#!/usr/bin/env bash
#
# Sync TTRPG documentation from Obsidian vault to docs folder
#

set -e

OBSIDIAN_SOURCE="/home/gwen/Gwenny/TTRPG Project"
DOCS_TARGET="/home/gwen/dev/GrystTTRPG/docs"

echo "📚 Syncing Gryst TTRPG documentation..."

# Clean existing content (except docsify files)
find "$DOCS_TARGET" -mindepth 1 -maxdepth 1 \
  ! -name 'index.html' \
  ! -name '_sidebar.md' \
  ! -name 'README.md' \
  ! -name '.nojekyll' \
  -exec rm -rf {} +

# Function to slugify folder/file names
slugify() {
  echo "$1" | sed -E 's/^[0-9]+ - //' | tr ' ' '-' | tr '[:upper:]' '[:lower:]'
}

# Copy Dashboard.md to docs root (skip - README is the landing page)
# cp "$OBSIDIAN_SOURCE/Dashboard.md" "$DOCS_TARGET/Dashboard.md" 2>/dev/null || true

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
    # Replace spaces with hyphens in filename
    new_filename=$(echo "$filename" | tr ' ' '-')
    cp "$file" "$target_dir/$new_filename"
    echo "  ✓ $slug/$new_filename"
  done
  
  # Handle nested folders (Factions, Locations, etc.)
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
