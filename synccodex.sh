#!/usr/bin/env bash
#
# Sync GrystForge bundles from MASTERCODEX to docs/codex
# Converts JSON content packs to readable markdown with cross-linking
#

set -e

CODEX_SOURCE="/home/gwen/dev/GrystTTRPGMASTER/MASTERCODEX"
DOCS_TARGET="/home/gwen/dev/GrystTTRPG/docs/codex"

echo "📚 Syncing Gryst Codex..."

# Clean existing codex
rm -rf "$DOCS_TARGET"
mkdir -p "$DOCS_TARGET"

# Process each bundle
for bundle_dir in "$CODEX_SOURCE"/*/; do
  [ -d "$bundle_dir" ] || continue
  bundle_name=$(basename "$bundle_dir")
  
  # Find the version folder (e.g., CorV1)
  for version_dir in "$bundle_dir"*/; do
    [ -d "$version_dir" ] || continue
    [ -f "$version_dir/manifest.json" ] || continue
    
    version_name=$(basename "$version_dir")
    manifest="$version_dir/manifest.json"
    
    pack_name=$(jq -r '.name' "$manifest")
    pack_version=$(jq -r '.version' "$manifest")
    
    echo "  📦 Processing $pack_name v$pack_version"
    
    # Create bundle output directory
    bundle_out="$DOCS_TARGET/$bundle_name"
    mkdir -p "$bundle_out"
    
    # === BUILD LOOKUP TABLES ===
    # These allow us to resolve {{tag:uuid}} and {{dict:uuid}} references
    
    declare -A TAG_NAMES TAG_COLORS TAG_LOW TAG_CLASS
    declare -A DICT_NAMES DICT_COLORS DICT_LOW
    
    # Load all tags
    if [ -d "$version_dir/tags" ]; then
      for tag_file in "$version_dir/tags"/*.json; do
        [ -f "$tag_file" ] || continue
        tag_id=$(jq -r '.id' "$tag_file")
        TAG_NAMES["$tag_id"]=$(jq -r '.name' "$tag_file")
        TAG_COLORS["$tag_id"]=$(jq -r '.color // ""' "$tag_file")
        TAG_LOW["$tag_id"]=$(jq -r '.lowConsensus // ""' "$tag_file")
        TAG_CLASS["$tag_id"]=$(jq -r '.class // "Other"' "$tag_file")
      done
    fi
    
    # Load all dictionary entries
    if [ -d "$version_dir/dictionary" ]; then
      for dict_file in "$version_dir/dictionary"/*.json; do
        [ -f "$dict_file" ] || continue
        dict_id=$(jq -r '.id' "$dict_file")
        DICT_NAMES["$dict_id"]=$(jq -r '.name' "$dict_file")
        DICT_COLORS["$dict_id"]=$(jq -r '.color // ""' "$dict_file")
        DICT_LOW["$dict_id"]=$(jq -r '.lowConsensus // ""' "$dict_file")
      done
    fi
    
    # === HELPER: Resolve references in text ===
    # Converts {{tag:uuid}} and {{dict:uuid}} to colored markdown links
    resolve_refs() {
      local text="$1"
      local result="$text"
      
      # Replace {{dict:uuid}} references
      for dict_id in "${!DICT_NAMES[@]}"; do
        local name="${DICT_NAMES[$dict_id]}"
        local color="${DICT_COLORS[$dict_id]}"
        local low="${DICT_LOW[$dict_id]}"
        # Anchor must match Docsify's auto-generated anchor from heading
        # If low consensus exists, heading is "NAME / Low" so anchor includes both
        if [ -n "$low" ]; then
          local anchor=$(echo "$name / $low" | python3 -c "import sys; print(sys.stdin.read().lower(), end='')"  | sed 's/[()]//g' | sed 's/[ /]/-/g' | sed 's/--*/-/g' | sed 's/^-//' | sed 's/-$//')
        else
          local anchor=$(echo "$name" | python3 -c "import sys; print(sys.stdin.read().lower(), end='')"  | sed 's/[()]//g' | sed 's/[ /]/-/g' | sed 's/--*/-/g' | sed 's/^-//' | sed 's/-$//')
        fi
        
        if [ -n "$color" ]; then
          local replacement="[<span style=\"color:$color;font-weight:600\">$name</span>](/codex/$bundle_name/Dictionary?id=$anchor)"
        else
          local replacement="[$name](/codex/$bundle_name/Dictionary?id=$anchor)"
        fi
        result=$(echo "$result" | sed "s|{{dict:$dict_id}}|$replacement|g")
      done
      
      # Replace {{tag:uuid}} references
      for tag_id in "${!TAG_NAMES[@]}"; do
        local name="${TAG_NAMES[$tag_id]}"
        local color="${TAG_COLORS[$tag_id]}"
        local low="${TAG_LOW[$tag_id]}"
        # Anchor must match Docsify's auto-generated anchor from heading
        if [ -n "$low" ]; then
          local anchor=$(echo "$name / $low" | python3 -c "import sys; print(sys.stdin.read().lower(), end='')"  | sed 's/[()]//g' | sed 's/[ /]/-/g' | sed 's/--*/-/g' | sed 's/^-//' | sed 's/-$//')
        else
          local anchor=$(echo "$name" | python3 -c "import sys; print(sys.stdin.read().lower(), end='')"  | sed 's/[()]//g' | sed 's/[ /]/-/g' | sed 's/--*/-/g' | sed 's/^-//' | sed 's/-$//')
        fi
        
        if [ -n "$color" ]; then
          local replacement="[<span style=\"color:$color;font-weight:600\">[$name]</span>](/codex/$bundle_name/Tags?id=$anchor)"
        else
          local replacement="[[$name]](/codex/$bundle_name/Tags?id=$anchor)"
        fi
        result=$(echo "$result" | sed "s|{{tag:$tag_id}}|$replacement|g")
      done
      
      echo "$result"
    }
    
    # === HELPER: Format tag with color ===
    format_tag() {
      local tag_id="$1"
      local name="${TAG_NAMES[$tag_id]}"
      local color="${TAG_COLORS[$tag_id]}"
      local low="${TAG_LOW[$tag_id]}"
      
      if [ -n "$color" ]; then
        if [ -n "$low" ]; then
          echo "<span style=\"color:$color;font-weight:600\">[$name]</span> / $low"
        else
          echo "<span style=\"color:$color;font-weight:600\">[$name]</span>"
        fi
      else
        if [ -n "$low" ]; then
          echo "[$name] / $low"
        else
          echo "[$name]"
        fi
      fi
    }
    
    # Count items
    tag_count=$(find "$version_dir/tags" -name "*.json" 2>/dev/null | wc -l)
    dict_count=$(find "$version_dir/dictionary" -name "*.json" 2>/dev/null | wc -l)
    gambit_count=$(find "$version_dir/gambits" -name "*.json" 2>/dev/null | wc -l)
    module_count=$(find "$version_dir/modules" -name "*.json" 2>/dev/null | wc -l)
    loculus_count=$(find "$version_dir/loculi" -name "*.json" 2>/dev/null | wc -l)
    character_count=$(find "$version_dir/characters" -name "*.json" 2>/dev/null | wc -l)
    
    # === BUNDLE INDEX (Dictionary first!) ===
    cat > "$bundle_out/README.md" << EOF
# $pack_name

**Version:** $pack_version

This is a Gryst content pack containing Tags, Gambits, Modules, and more.

---

## Contents

EOF
    
    # Dictionary comes FIRST
    [ "$dict_count" -gt 0 ] && echo "- [Dictionary](Dictionary.md) ($dict_count)" >> "$bundle_out/README.md"
    [ "$tag_count" -gt 0 ] && echo "- [Tags](Tags.md) ($tag_count)" >> "$bundle_out/README.md"
    [ "$gambit_count" -gt 0 ] && echo "- [Gambits](Gambits.md) ($gambit_count)" >> "$bundle_out/README.md"
    [ "$module_count" -gt 0 ] && echo "- [Modules](Modules.md) ($module_count)" >> "$bundle_out/README.md"
    [ "$loculus_count" -gt 0 ] && echo "- [Loculi](Loculi.md) ($loculus_count)" >> "$bundle_out/README.md"
    [ "$character_count" -gt 0 ] && echo "- [Characters](Characters.md) ($character_count)" >> "$bundle_out/README.md"
    
    # === DICTIONARY (Generated FIRST) ===
    if [ "$dict_count" -gt 0 ]; then
      echo "    ✓ Dictionary"
      cat > "$bundle_out/Dictionary.md" << 'EOF'
# Dictionary

Common terms and concepts used throughout the rules. These are referenced inline in rules text.

---

EOF
      
      # Sort dictionary entries alphabetically by name
      dict_sorted=$(mktemp)
      for dict_file in "$version_dir/dictionary"/*.json; do
        [ -f "$dict_file" ] || continue
        dname=$(jq -r '.name' "$dict_file")
        echo "$dname|$dict_file"
      done | sort > "$dict_sorted"
      
      while IFS='|' read -r _ dict_file; do
        [ -f "$dict_file" ] || continue
        
        name=$(jq -r '.name' "$dict_file")
        low=$(jq -r '.lowConsensus // ""' "$dict_file")
        desc=$(jq -r '.description // "No description."' "$dict_file")
        color=$(jq -r '.color // ""' "$dict_file")
        
        # Header with color
        if [ -n "$color" ]; then
          if [ -n "$low" ]; then
            echo "## <span style=\"color:$color\">$name</span> / $low" >> "$bundle_out/Dictionary.md"
          else
            echo "## <span style=\"color:$color\">$name</span>" >> "$bundle_out/Dictionary.md"
          fi
        else
          if [ -n "$low" ]; then
            echo "## $name / $low" >> "$bundle_out/Dictionary.md"
          else
            echo "## $name" >> "$bundle_out/Dictionary.md"
          fi
        fi
        echo "" >> "$bundle_out/Dictionary.md"
        
        # Resolve references in description
        resolved_desc=$(resolve_refs "$desc")
        echo "$resolved_desc" >> "$bundle_out/Dictionary.md"
        echo "" >> "$bundle_out/Dictionary.md"
      done < "$dict_sorted"
      rm -f "$dict_sorted"
    fi
    
    # === TAGS ===
    if [ "$tag_count" -gt 0 ]; then
      echo "    ✓ Tags"
      cat > "$bundle_out/Tags.md" << 'EOF'
# Tags

Tags define what something IS and what it CAN DO. They appear on Gambits, Modules, and Loculi.

---

EOF
      
      # Group tags by class
      declare -A tags_by_class
      for tag_file in "$version_dir/tags"/*.json; do
        [ -f "$tag_file" ] || continue
        tag_class=$(jq -r '.class // "Other"' "$tag_file")
        tags_by_class["$tag_class"]+="$tag_file "
      done
      
      # Output tags sorted by class priority
      for class in Modifier Form Category Proficiency Element Range Source Condition Other; do
        [ -z "${tags_by_class[$class]}" ] && continue
        
        echo "## $class" >> "$bundle_out/Tags.md"
        echo "" >> "$bundle_out/Tags.md"
        
        for tag_file in ${tags_by_class[$class]}; do
          name=$(jq -r '.name' "$tag_file")
          low=$(jq -r '.lowConsensus // ""' "$tag_file")
          desc=$(jq -r '.description // "No description."' "$tag_file")
          color=$(jq -r '.color // ""' "$tag_file")
          
          # Header with color
          if [ -n "$color" ]; then
            if [ -n "$low" ]; then
              echo "### <span style=\"color:$color\">[$name]</span> / $low" >> "$bundle_out/Tags.md"
            else
              echo "### <span style=\"color:$color\">[$name]</span>" >> "$bundle_out/Tags.md"
            fi
          else
            if [ -n "$low" ]; then
              echo "### [$name] / $low" >> "$bundle_out/Tags.md"
            else
              echo "### [$name]" >> "$bundle_out/Tags.md"
            fi
          fi
          echo "" >> "$bundle_out/Tags.md"
          
          # Resolve references in description
          resolved_desc=$(resolve_refs "$desc")
          echo "$resolved_desc" >> "$bundle_out/Tags.md"
          echo "" >> "$bundle_out/Tags.md"
        done
      done
      
      unset tags_by_class
    fi
    
    # === GAMBITS ===
    if [ "$gambit_count" -gt 0 ]; then
      echo "    ✓ Gambits"
      cat > "$bundle_out/Gambits.md" << 'EOF'
# Gambits

Gambits are actions with pre-authored outcomes. Each has four possible results: Triumphus (critical success), Successus (success), Clades (failure), and Calamitas (critical failure).

---

EOF
      
      for gambit_file in "$version_dir/gambits"/*.json; do
        [ -f "$gambit_file" ] || continue
        
        name=$(jq -r '.name' "$gambit_file")
        desc=$(jq -r '.description // ""' "$gambit_file")
        cost=$(jq -r '.addOnCost // "—"' "$gambit_file")
        [ "$cost" = "" ] && cost="—"
        
        echo "## $name" >> "$bundle_out/Gambits.md"
        echo "" >> "$bundle_out/Gambits.md"
        
        if [ -n "$desc" ]; then
          resolved_desc=$(resolve_refs "$desc")
          echo "> $resolved_desc" >> "$bundle_out/Gambits.md"
          echo "" >> "$bundle_out/Gambits.md"
        fi
        
        echo "**Add-On Cost:** $cost" >> "$bundle_out/Gambits.md"
        echo "" >> "$bundle_out/Gambits.md"
        
        # Tags with colors and links
        tag_ids=$(jq -r '.tags[]?.tagId // empty' "$gambit_file" 2>/dev/null)
        if [ -n "$tag_ids" ]; then
          echo -n "**Tags:** " >> "$bundle_out/Gambits.md"
          first=true
          for tid in $tag_ids; do
            if [ "$first" = true ]; then
              first=false
            else
              echo -n ", " >> "$bundle_out/Gambits.md"
            fi
            
            tname="${TAG_NAMES[$tid]}"
            tcolor="${TAG_COLORS[$tid]}"
            tlow="${TAG_LOW[$tid]}"
            # Anchor must match Docsify's auto-generated anchor from heading
            if [ -n "$tlow" ]; then
              anchor=$(echo "$tname / $tlow" | python3 -c "import sys; print(sys.stdin.read().lower(), end='')"  | sed 's/[()]//g' | sed 's/[ /]/-/g' | sed 's/--*/-/g' | sed 's/^-//' | sed 's/-$//')
            else
              anchor=$(echo "$tname" | python3 -c "import sys; print(sys.stdin.read().lower(), end='')"  | sed 's/[()]//g' | sed 's/[ /]/-/g' | sed 's/--*/-/g' | sed 's/^-//' | sed 's/-$//')
            fi
            
            if [ -n "$tcolor" ]; then
              if [ -n "$tlow" ]; then
                echo -n "[<span style=\"color:$tcolor;font-weight:600\">[$tname]</span>](/codex/$bundle_name/Tags?id=$anchor) / $tlow" >> "$bundle_out/Gambits.md"
              else
                echo -n "[<span style=\"color:$tcolor;font-weight:600\">[$tname]</span>](/codex/$bundle_name/Tags?id=$anchor)" >> "$bundle_out/Gambits.md"
              fi
            else
              if [ -n "$tlow" ]; then
                echo -n "[[$tname]](/codex/$bundle_name/Tags?id=$anchor) / $tlow" >> "$bundle_out/Gambits.md"
              else
                echo -n "[[$tname]](/codex/$bundle_name/Tags?id=$anchor)" >> "$bundle_out/Gambits.md"
              fi
            fi
          done
          echo "" >> "$bundle_out/Gambits.md"
          echo "" >> "$bundle_out/Gambits.md"
        fi
        
        # Outcomes with resolved references
        echo "### Outcomes" >> "$bundle_out/Gambits.md"
        echo "" >> "$bundle_out/Gambits.md"
        
        triumphus=$(jq -r '.outcomes.triumphus.text // "—"' "$gambit_file")
        successus=$(jq -r '.outcomes.successus.text // "—"' "$gambit_file")
        clades=$(jq -r '.outcomes.clades.text // "—"' "$gambit_file")
        calamitas=$(jq -r '.outcomes.calamitas.text // "—"' "$gambit_file")
        
        echo "**Triumphus (Critical Success):** $(resolve_refs "$triumphus")" >> "$bundle_out/Gambits.md"
        echo "" >> "$bundle_out/Gambits.md"
        echo "**Successus (Success):** $(resolve_refs "$successus")" >> "$bundle_out/Gambits.md"
        echo "" >> "$bundle_out/Gambits.md"
        echo "**Clades (Failure):** $(resolve_refs "$clades")" >> "$bundle_out/Gambits.md"
        echo "" >> "$bundle_out/Gambits.md"
        echo "**Calamitas (Critical Failure):** $(resolve_refs "$calamitas")" >> "$bundle_out/Gambits.md"
        echo "" >> "$bundle_out/Gambits.md"
        echo "---" >> "$bundle_out/Gambits.md"
        echo "" >> "$bundle_out/Gambits.md"
      done
    fi
    
    # === MODULES ===
    if [ "$module_count" -gt 0 ]; then
      echo "    ✓ Modules"
      cat > "$bundle_out/Modules.md" << 'EOF'
# Modules

Modules are components that grant stats, perks, and Gambits. They install into Loculi.

---

EOF
      
      for module_file in "$version_dir/modules"/*.json; do
        [ -f "$module_file" ] || continue
        
        name=$(jq -r '.name // "Unnamed Module"' "$module_file")
        desc=$(jq -r '.description // ""' "$module_file")
        
        echo "## $name" >> "$bundle_out/Modules.md"
        echo "" >> "$bundle_out/Modules.md"
        if [ -n "$desc" ]; then
          resolved_desc=$(resolve_refs "$desc")
          echo "$resolved_desc" >> "$bundle_out/Modules.md"
          echo "" >> "$bundle_out/Modules.md"
        fi
        echo "---" >> "$bundle_out/Modules.md"
        echo "" >> "$bundle_out/Modules.md"
      done
    fi
    
    # === LOCULI ===
    if [ "$loculus_count" -gt 0 ]; then
      echo "    ✓ Loculi"
      cat > "$bundle_out/Loculi.md" << 'EOF'
# Loculi

Loculi are containers that hold Modules. A rifle frame, a Walker chassis, a suit of armor — all Loculi.

---

EOF
      
      for loculus_file in "$version_dir/loculi"/*.json; do
        [ -f "$loculus_file" ] || continue
        
        name=$(jq -r '.name // "Unnamed Loculus"' "$loculus_file")
        desc=$(jq -r '.description // ""' "$loculus_file")
        
        echo "## $name" >> "$bundle_out/Loculi.md"
        echo "" >> "$bundle_out/Loculi.md"
        if [ -n "$desc" ]; then
          resolved_desc=$(resolve_refs "$desc")
          echo "$resolved_desc" >> "$bundle_out/Loculi.md"
          echo "" >> "$bundle_out/Loculi.md"
        fi
        echo "---" >> "$bundle_out/Loculi.md"
        echo "" >> "$bundle_out/Loculi.md"
      done
    fi
    
    # === CHARACTERS ===
    if [ "$character_count" -gt 0 ]; then
      echo "    ✓ Characters"
      cat > "$bundle_out/Characters.md" << 'EOF'
# Characters

Pre-built characters and NPCs.

---

EOF
      
      for char_file in "$version_dir/characters"/*.json; do
        [ -f "$char_file" ] || continue
        
        name=$(jq -r '.name // "Unnamed Character"' "$char_file")
        desc=$(jq -r '.description // ""' "$char_file")
        
        echo "## $name" >> "$bundle_out/Characters.md"
        echo "" >> "$bundle_out/Characters.md"
        if [ -n "$desc" ]; then
          resolved_desc=$(resolve_refs "$desc")
          echo "$resolved_desc" >> "$bundle_out/Characters.md"
          echo "" >> "$bundle_out/Characters.md"
        fi
        echo "---" >> "$bundle_out/Characters.md"
        echo "" >> "$bundle_out/Characters.md"
      done
    fi
    
    # Clean up associative arrays for next bundle
    unset TAG_NAMES TAG_COLORS TAG_LOW TAG_CLASS
    unset DICT_NAMES DICT_COLORS DICT_LOW
    
  done
done

# === CODEX INDEX ===
cat > "$DOCS_TARGET/README.md" << 'EOF'
# Codex

The Codex contains all content packs created with GrystForge. These are the building blocks for your Gryst campaigns — Tags, Gambits, Modules, Loculi, and Characters.

---

## Content Packs

EOF

for bundle_dir in "$DOCS_TARGET"/*/; do
  [ -d "$bundle_dir" ] || continue
  [ -f "$bundle_dir/README.md" ] || continue
  bundle_name=$(basename "$bundle_dir")
  echo "- [$bundle_name]($bundle_name/)" >> "$DOCS_TARGET/README.md"
done

echo ""
echo "✅ Codex sync complete!"
echo ""
echo "Generated files in: $DOCS_TARGET"
