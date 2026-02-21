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
    
    # Create bundle output directory (use version_name as the bundle ID, not parent workspace name)
    bundle_out="$DOCS_TARGET/$version_name"
    mkdir -p "$bundle_out"
    
    # Use version_name for internal links too
    bundle_name="$version_name"
    
    # === BUILD LOOKUP TABLES ===
    # These allow us to resolve {{type:uuid}} references
    
    declare -A TAG_NAMES TAG_COLORS TAG_LOW TAG_CLASS
    declare -A DICT_NAMES DICT_COLORS DICT_LOW
    declare -A GAMBIT_NAMES
    declare -A VIRTUS_NAMES VIRTUS_COLORS VIRTUS_LOW
    declare -A ARS_NAMES ARS_COLORS ARS_LOW
    
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
    
    # Load all gambits
    if [ -d "$version_dir/gambits" ]; then
      for gambit_file in "$version_dir/gambits"/*.json; do
        [ -f "$gambit_file" ] || continue
        gambit_id=$(jq -r '.id' "$gambit_file")
        GAMBIT_NAMES["$gambit_id"]=$(jq -r '.name' "$gambit_file")
      done
    fi
    
    # Load all virtutes
    if [ -d "$version_dir/virtutes" ]; then
      for virtus_file in "$version_dir/virtutes"/*.json; do
        [ -f "$virtus_file" ] || continue
        virtus_id=$(jq -r '.id' "$virtus_file")
        VIRTUS_NAMES["$virtus_id"]=$(jq -r '.name' "$virtus_file")
        VIRTUS_COLORS["$virtus_id"]=$(jq -r '.color // ""' "$virtus_file")
        VIRTUS_LOW["$virtus_id"]=$(jq -r '.lowConsensus // ""' "$virtus_file")
      done
    fi
    
    # Load all artes
    if [ -d "$version_dir/artes" ]; then
      for ars_file in "$version_dir/artes"/*.json; do
        [ -f "$ars_file" ] || continue
        ars_id=$(jq -r '.id' "$ars_file")
        ARS_NAMES["$ars_id"]=$(jq -r '.name' "$ars_file")
        ARS_COLORS["$ars_id"]=$(jq -r '.color // ""' "$ars_file")
        ARS_LOW["$ars_id"]=$(jq -r '.lowConsensus // ""' "$ars_file")
      done
    fi
    
    # === HELPER: Generate anchor from name ===
    make_anchor() {
      echo "$1" | python3 -c "import sys,re; s=sys.stdin.read(); s=s.replace('>','gt'); s=re.sub(r'[A-Z]', lambda m: m.group().lower(), s); s=re.sub(r'[^\\w\\s-]', '-', s, flags=re.UNICODE); s=re.sub(r'\\s+', '-', s); s=re.sub(r'-+', '-', s); s=s.rstrip('-'); print(s, end='')"
    }
    
    # === HELPER: Resolve references in text ===
    # Converts {{type:uuid}} to colored markdown links
    resolve_refs() {
      local text="$1"
      local result="$text"
      
      # Replace {{dict:uuid}} references
      for dict_id in "${!DICT_NAMES[@]}"; do
        local name="${DICT_NAMES[$dict_id]}"
        local color="${DICT_COLORS[$dict_id]}"
        local low="${DICT_LOW[$dict_id]}"
        local anchor_text="$name"
        [ -n "$low" ] && anchor_text="$name / $low"
        local anchor=$(make_anchor "$anchor_text")
        
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
        local anchor_text="$name"
        [ -n "$low" ] && anchor_text="$name / $low"
        local anchor=$(make_anchor "$anchor_text")
        
        if [ -n "$color" ]; then
          local replacement="[<span style=\"color:$color;font-weight:600\">[$name]</span>](/codex/$bundle_name/Tags?id=$anchor)"
        else
          local replacement="[[$name]](/codex/$bundle_name/Tags?id=$anchor)"
        fi
        result=$(echo "$result" | sed "s|{{tag:$tag_id}}|$replacement|g")
      done
      
      # Replace {{gambit:uuid}} references
      for gambit_id in "${!GAMBIT_NAMES[@]}"; do
        local name="${GAMBIT_NAMES[$gambit_id]}"
        local anchor=$(make_anchor "$name")
        local replacement="[<span style=\"color:#22c55e;font-weight:600\">$name</span>](/codex/$bundle_name/Gambits?id=$anchor)"
        result=$(echo "$result" | sed "s|{{gambit:$gambit_id}}|$replacement|g")
      done
      
      # Replace {{virtus:uuid}} references
      for virtus_id in "${!VIRTUS_NAMES[@]}"; do
        local name="${VIRTUS_NAMES[$virtus_id]}"
        local color="${VIRTUS_COLORS[$virtus_id]:-#f59e0b}"
        local low="${VIRTUS_LOW[$virtus_id]}"
        local anchor_text="$name"
        [ -n "$low" ] && anchor_text="$name / $low"
        local anchor=$(make_anchor "$anchor_text")
        local replacement="[<span style=\"color:$color;font-weight:600\">$name</span>](/codex/$bundle_name/Virtutes?id=$anchor)"
        result=$(echo "$result" | sed "s|{{virtus:$virtus_id}}|$replacement|g")
      done
      
      # Replace {{ars:uuid}} references
      for ars_id in "${!ARS_NAMES[@]}"; do
        local name="${ARS_NAMES[$ars_id]}"
        local color="${ARS_COLORS[$ars_id]:-#f43f5e}"
        local low="${ARS_LOW[$ars_id]}"
        local anchor_text="$name"
        [ -n "$low" ] && anchor_text="$name / $low"
        local anchor=$(make_anchor "$anchor_text")
        local replacement="[<span style=\"color:$color;font-weight:600\">$name</span>](/codex/$bundle_name/Artes?id=$anchor)"
        result=$(echo "$result" | sed "s|{{ars:$ars_id}}|$replacement|g")
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
    virtus_count=$(find "$version_dir/virtutes" -name "*.json" 2>/dev/null | wc -l)
    ars_count=$(find "$version_dir/artes" -name "*.json" 2>/dev/null | wc -l)
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
    [ "$virtus_count" -gt 0 ] && echo "- [Virtutes](Virtutes.md) ($virtus_count)" >> "$bundle_out/README.md"
    [ "$ars_count" -gt 0 ] && echo "- [Artēs](Artes.md) ($ars_count)" >> "$bundle_out/README.md"
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
      
      # Output tags sorted by class priority, then by order within class
      for class in Modifier Form Category Proficiency Element Range Source Condition Other; do
        [ -z "${tags_by_class[$class]}" ] && continue
        
        echo "## $class" >> "$bundle_out/Tags.md"
        echo "" >> "$bundle_out/Tags.md"
        
        # Sort tags by order field within this class
        tags_sorted=$(mktemp)
        for tag_file in ${tags_by_class[$class]}; do
          order=$(jq -r '.order // 9999' "$tag_file")
          echo "$order|$tag_file"
        done | sort -t'|' -k1 -n > "$tags_sorted"
        
        while IFS='|' read -r _ tag_file; do
          [ -f "$tag_file" ] || continue
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
        done < "$tags_sorted"
        rm -f "$tags_sorted"
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
              anchor=$(echo "$tname / $tlow" | python3 -c "import sys,re; s=sys.stdin.read(); s=s.replace('>','gt'); s=re.sub(r'[A-Z]', lambda m: m.group().lower(), s); s=re.sub(r'[^\\w\\s-]', '-', s, flags=re.UNICODE); s=re.sub(r'\\s+', '-', s); s=re.sub(r'-+', '-', s); s=s.rstrip('-'); print(s, end='')")
            else
              anchor=$(echo "$tname" | python3 -c "import sys,re; s=sys.stdin.read(); s=s.replace('>','gt'); s=re.sub(r'[A-Z]', lambda m: m.group().lower(), s); s=re.sub(r'[^\\w\\s-]', '-', s, flags=re.UNICODE); s=re.sub(r'\\s+', '-', s); s=re.sub(r'-+', '-', s); s=s.rstrip('-'); print(s, end='')")
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
    
    # === VIRTUTES ===
    if [ "$virtus_count" -gt 0 ]; then
      echo "    ✓ Virtutes"
      cat > "$bundle_out/Virtutes.md" << 'EOF'
# Virtutes

Virtutes are passive abilities (perks) that may have trigger conditions. When their condition is met, they activate automatically or grant an option to the player.

---

EOF
      
      for virtus_file in "$version_dir/virtutes"/*.json; do
        [ -f "$virtus_file" ] || continue
        
        name=$(jq -r '.name' "$virtus_file")
        low=$(jq -r '.lowConsensus // ""' "$virtus_file")
        condition=$(jq -r '.condition // ""' "$virtus_file")
        desc=$(jq -r '.description // ""' "$virtus_file")
        color=$(jq -r '.color // ""' "$virtus_file")
        
        # Header with color
        if [ -n "$color" ]; then
          if [ -n "$low" ]; then
            echo "## <span style=\"color:$color\">$name</span> / $low" >> "$bundle_out/Virtutes.md"
          else
            echo "## <span style=\"color:$color\">$name</span>" >> "$bundle_out/Virtutes.md"
          fi
        else
          if [ -n "$low" ]; then
            echo "## $name / $low" >> "$bundle_out/Virtutes.md"
          else
            echo "## $name" >> "$bundle_out/Virtutes.md"
          fi
        fi
        echo "" >> "$bundle_out/Virtutes.md"
        
        if [ -n "$condition" ]; then
          resolved_condition=$(resolve_refs "$condition")
          echo "> **Condition:** $resolved_condition" >> "$bundle_out/Virtutes.md"
          echo "" >> "$bundle_out/Virtutes.md"
        fi
        
        if [ -n "$desc" ]; then
          resolved_desc=$(resolve_refs "$desc")
          echo "$resolved_desc" >> "$bundle_out/Virtutes.md"
          echo "" >> "$bundle_out/Virtutes.md"
        fi
        
        echo "---" >> "$bundle_out/Virtutes.md"
        echo "" >> "$bundle_out/Virtutes.md"
      done
    fi
    
    # === ARTES ===
    if [ "$ars_count" -gt 0 ]; then
      echo "    ✓ Artēs"
      cat > "$bundle_out/Artes.md" << 'EOF'
# Artēs

Artēs (Skills) are bundles of Gambits and Virtutes that characters can learn. Each ability within an Ars has a Peritia (proficiency) requirement.

---

EOF
      
      for ars_file in "$version_dir/artes"/*.json; do
        [ -f "$ars_file" ] || continue
        
        name=$(jq -r '.name' "$ars_file")
        low=$(jq -r '.lowConsensus // ""' "$ars_file")
        desc=$(jq -r '.description // ""' "$ars_file")
        color=$(jq -r '.color // ""' "$ars_file")
        parent=$(jq -r '.parent // ""' "$ars_file")
        
        # Header with color
        if [ -n "$color" ]; then
          if [ -n "$low" ]; then
            echo "## <span style=\"color:$color\">$name</span> / $low" >> "$bundle_out/Artes.md"
          else
            echo "## <span style=\"color:$color\">$name</span>" >> "$bundle_out/Artes.md"
          fi
        else
          if [ -n "$low" ]; then
            echo "## $name / $low" >> "$bundle_out/Artes.md"
          else
            echo "## $name" >> "$bundle_out/Artes.md"
          fi
        fi
        echo "" >> "$bundle_out/Artes.md"
        
        # Show parent if exists
        if [ -n "$parent" ]; then
          parent_name="${ARS_NAMES[$parent]}"
          if [ -n "$parent_name" ]; then
            echo "> Sub-art of **$parent_name**" >> "$bundle_out/Artes.md"
            echo "" >> "$bundle_out/Artes.md"
          fi
        fi
        
        if [ -n "$desc" ]; then
          resolved_desc=$(resolve_refs "$desc")
          echo "$resolved_desc" >> "$bundle_out/Artes.md"
          echo "" >> "$bundle_out/Artes.md"
        fi
        
        # List abilities with Peritia
        abilities=$(jq -r '.abilities // []' "$ars_file")
        ability_count=$(echo "$abilities" | jq 'length')
        
        if [ "$ability_count" -gt 0 ]; then
          echo "### Abilities" >> "$bundle_out/Artes.md"
          echo "" >> "$bundle_out/Artes.md"
          
          echo "$abilities" | jq -c '.[]' | while read -r ability; do
            atype=$(echo "$ability" | jq -r '.type')
            ref_id=$(echo "$ability" | jq -r '.referenceId')
            peritia=$(echo "$ability" | jq -r '.peritia')
            postulata=$(echo "$ability" | jq -r '.postulata // ""')
            
            # Convert peritia to Roman numeral
            roman=""
            p=$peritia
            while [ $p -ge 1000 ]; do roman+="M"; p=$((p-1000)); done
            while [ $p -ge 900 ]; do roman+="CM"; p=$((p-900)); done
            while [ $p -ge 500 ]; do roman+="D"; p=$((p-500)); done
            while [ $p -ge 400 ]; do roman+="CD"; p=$((p-400)); done
            while [ $p -ge 100 ]; do roman+="C"; p=$((p-100)); done
            while [ $p -ge 90 ]; do roman+="XC"; p=$((p-90)); done
            while [ $p -ge 50 ]; do roman+="L"; p=$((p-50)); done
            while [ $p -ge 40 ]; do roman+="XL"; p=$((p-40)); done
            while [ $p -ge 10 ]; do roman+="X"; p=$((p-10)); done
            while [ $p -ge 9 ]; do roman+="IX"; p=$((p-9)); done
            while [ $p -ge 5 ]; do roman+="V"; p=$((p-5)); done
            while [ $p -ge 4 ]; do roman+="IV"; p=$((p-4)); done
            while [ $p -ge 1 ]; do roman+="I"; p=$((p-1)); done
            
            # Get ability name
            if [ "$atype" = "gambit" ]; then
              aname="${GAMBIT_NAMES[$ref_id]:-Unknown Gambit}"
              echo -n "- **$roman** — <span style=\"color:#22c55e\">$aname</span> (Gambit)" >> "$bundle_out/Artes.md"
            else
              aname="${VIRTUS_NAMES[$ref_id]:-Unknown Virtus}"
              vcolor="${VIRTUS_COLORS[$ref_id]:-#f59e0b}"
              echo -n "- **$roman** — <span style=\"color:$vcolor\">$aname</span> (Virtus)" >> "$bundle_out/Artes.md"
            fi
            
            if [ -n "$postulata" ]; then
              echo " — *$postulata*" >> "$bundle_out/Artes.md"
            else
              echo "" >> "$bundle_out/Artes.md"
            fi
          done
          echo "" >> "$bundle_out/Artes.md"
        fi
        
        echo "---" >> "$bundle_out/Artes.md"
        echo "" >> "$bundle_out/Artes.md"
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
    unset GAMBIT_NAMES
    unset VIRTUS_NAMES VIRTUS_COLORS VIRTUS_LOW
    unset ARS_NAMES ARS_COLORS ARS_LOW
    
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
