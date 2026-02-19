#!/usr/bin/env bash
#
# Generate a single raw text document from all markdown files for easy parsing
#

set -e

DOCS_DIR="${1:-docs}"
OUTPUT_FILE="$DOCS_DIR/raw.txt"

echo "🤖 Generating raw text document..."

# Start with header
cat > "$OUTPUT_FILE" << 'EOF'
================================================================================
GRYST TTRPG - COMPLETE DOCUMENTATION
================================================================================
This is an auto-generated plain text version of the Gryst TTRPG documentation.
For the formatted version, visit: https://gwennypig.github.io/GrystTTRPG/

Generated: $(date -u +"%Y-%m-%d %H:%M UTC")
================================================================================

EOF

# Replace the date placeholder
sed -i "s/\$(date -u +\"%Y-%m-%d %H:%M UTC\")/$(date -u +"%Y-%m-%d %H:%M UTC")/" "$OUTPUT_FILE"

# Function to add a file with header
add_file() {
  local file="$1"
  local relative_path="${file#$DOCS_DIR/}"
  
  echo "" >> "$OUTPUT_FILE"
  echo "────────────────────────────────────────────────────────────────────────────────" >> "$OUTPUT_FILE"
  echo "FILE: $relative_path" >> "$OUTPUT_FILE"
  echo "────────────────────────────────────────────────────────────────────────────────" >> "$OUTPUT_FILE"
  echo "" >> "$OUTPUT_FILE"
  cat "$file" >> "$OUTPUT_FILE"
  echo "" >> "$OUTPUT_FILE"
}

# Process files in a sensible order
# 1. README first
[ -f "$DOCS_DIR/README.md" ] && add_file "$DOCS_DIR/README.md"

# 2. Core Design
for file in "$DOCS_DIR"/core-design/*.md; do
  [ -f "$file" ] && add_file "$file"
done

# 3. Rules
for file in "$DOCS_DIR"/rules/*.md; do
  [ -f "$file" ] && add_file "$file"
done

# 4. Worldbuilding (including subfolders)
for file in "$DOCS_DIR"/worldbuilding/*.md; do
  [ -f "$file" ] && add_file "$file"
done
for file in "$DOCS_DIR"/worldbuilding/**/*.md; do
  [ -f "$file" ] && add_file "$file"
done

# 5. Everything else
for file in $(find "$DOCS_DIR" -name "*.md" -type f | sort); do
  # Skip already processed and special files
  case "$file" in
    */README.md|*/core-design/*|*/rules/*|*/worldbuilding/*|*/_sidebar.md)
      continue
      ;;
  esac
  add_file "$file"
done

# Footer
echo "" >> "$OUTPUT_FILE"
echo "================================================================================" >> "$OUTPUT_FILE"
echo "END OF DOCUMENT" >> "$OUTPUT_FILE"
echo "================================================================================" >> "$OUTPUT_FILE"

# Stats
line_count=$(wc -l < "$OUTPUT_FILE")
char_count=$(wc -c < "$OUTPUT_FILE")
file_count=$(grep -c "^FILE:" "$OUTPUT_FILE" || echo 0)

echo "✅ Generated $OUTPUT_FILE"
echo "   📄 $file_count files"
echo "   📝 $line_count lines"
echo "   💾 $(numfmt --to=iec $char_count 2>/dev/null || echo "$char_count bytes")"
