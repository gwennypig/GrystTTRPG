#!/usr/bin/env bash
#
# Sync GrystForge bundles from MASTERCODEX to docs/codex
# Converts JSON content packs to readable markdown
#

set -e

CODEX_SOURCE="/home/gwen/dev/GrystTTRPGMASTER/MASTERCODEX"
DOCS_TARGET="/home/gwen/dev/GrystTTRPG/docs/codex"

echo "📚 Syncing Gryst Codex..."

# Clean existing codex
rm -rf "$DOCS_TARGET"
mkdir -p "$DOCS_TARGET"

# Tag class priority for sorting
declare -A CLASS_ORDER=(
  ["Modifier"]=0
  ["Form"]=1
  ["Category"]=2
  ["Proficiency"]=3
  ["Element"]=4
  ["Range"]=5
  ["Source"]=6
  ["Condition"]=7
  ["Other"]=8
)

# Helper: Get tag name by ID from a bundle
get_tag_name() {
  local bundle_path="$1"
  local tag_id="$2"
  local tag_file="$bundle_path/tags/$tag_id.json"
  if [ -f "$tag_file" ]; then
    jq -r '.name' "$tag_file"
  else
    echo "$tag_id"
  fi
}

# Helper: Get tag low consensus by ID
get_tag_low() {
  local bundle_path="$1"
  local tag_id="$2"
  local tag_file="$bundle_path/tags/$tag_id.json"
  if [ -f "$tag_file" ]; then
    jq -r '.lowConsensus // empty' "$tag_file"
  fi
}

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
    
    # === BUNDLE INDEX ===
    cat > "$bundle_out/README.md" << EOF
# $pack_name

**Version:** $pack_version

This is a Gryst content pack containing Tags, Gambits, Modules, and more.

---

## Contents

EOF
    
    # Count items
    tag_count=$(find "$version_dir/tags" -name "*.json" 2>/dev/null | wc -l)
    gambit_count=$(find "$version_dir/gambits" -name "*.json" 2>/dev/null | wc -l)
    module_count=$(find "$version_dir/modules" -name "*.json" 2>/dev/null | wc -l)
    loculus_count=$(find "$version_dir/loculi" -name "*.json" 2>/dev/null | wc -l)
    character_count=$(find "$version_dir/characters" -name "*.json" 2>/dev/null | wc -l)
    
    [ "$tag_count" -gt 0 ] && echo "- [Tags](Tags.md) ($tag_count)" >> "$bundle_out/README.md"
    [ "$gambit_count" -gt 0 ] && echo "- [Gambits](Gambits.md) ($gambit_count)" >> "$bundle_out/README.md"
    [ "$module_count" -gt 0 ] && echo "- [Modules](Modules.md) ($module_count)" >> "$bundle_out/README.md"
    [ "$loculus_count" -gt 0 ] && echo "- [Loculi](Loculi.md) ($loculus_count)" >> "$bundle_out/README.md"
    [ "$character_count" -gt 0 ] && echo "- [Characters](Characters.md) ($character_count)" >> "$bundle_out/README.md"
    
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
          low=$(jq -r '.lowConsensus // empty' "$tag_file")
          desc=$(jq -r '.description // "No description."' "$tag_file")
          
          if [ -n "$low" ]; then
            echo "### [$name] / $low" >> "$bundle_out/Tags.md"
          else
            echo "### [$name]" >> "$bundle_out/Tags.md"
          fi
          echo "" >> "$bundle_out/Tags.md"
          echo "$desc" >> "$bundle_out/Tags.md"
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
        desc=$(jq -r '.description // empty' "$gambit_file")
        cost=$(jq -r '.addOnCost // "—"' "$gambit_file")
        [ "$cost" = "" ] && cost="—"
        
        echo "## $name" >> "$bundle_out/Gambits.md"
        echo "" >> "$bundle_out/Gambits.md"
        
        [ -n "$desc" ] && echo "> $desc" >> "$bundle_out/Gambits.md" && echo "" >> "$bundle_out/Gambits.md"
        
        echo "**Add-On Cost:** $cost" >> "$bundle_out/Gambits.md"
        echo "" >> "$bundle_out/Gambits.md"
        
        # Tags
        tag_ids=$(jq -r '.tags[]?.tagId // empty' "$gambit_file" 2>/dev/null)
        if [ -n "$tag_ids" ]; then
          echo -n "**Tags:** " >> "$bundle_out/Gambits.md"
          first=true
          for tid in $tag_ids; do
            tname=$(get_tag_name "$version_dir" "$tid")
            tlow=$(get_tag_low "$version_dir" "$tid")
            if [ "$first" = true ]; then
              first=false
            else
              echo -n ", " >> "$bundle_out/Gambits.md"
            fi
            if [ -n "$tlow" ]; then
              echo -n "[$tname]/$tlow" >> "$bundle_out/Gambits.md"
            else
              echo -n "[$tname]" >> "$bundle_out/Gambits.md"
            fi
          done
          echo "" >> "$bundle_out/Gambits.md"
          echo "" >> "$bundle_out/Gambits.md"
        fi
        
        # Outcomes
        echo "### Outcomes" >> "$bundle_out/Gambits.md"
        echo "" >> "$bundle_out/Gambits.md"
        
        triumphus=$(jq -r '.outcomes.triumphus.text // "—"' "$gambit_file")
        successus=$(jq -r '.outcomes.successus.text // "—"' "$gambit_file")
        clades=$(jq -r '.outcomes.clades.text // "—"' "$gambit_file")
        calamitas=$(jq -r '.outcomes.calamitas.text // "—"' "$gambit_file")
        
        echo "**Triumphus (Critical Success):** $triumphus" >> "$bundle_out/Gambits.md"
        echo "" >> "$bundle_out/Gambits.md"
        echo "**Successus (Success):** $successus" >> "$bundle_out/Gambits.md"
        echo "" >> "$bundle_out/Gambits.md"
        echo "**Clades (Failure):** $clades" >> "$bundle_out/Gambits.md"
        echo "" >> "$bundle_out/Gambits.md"
        echo "**Calamitas (Critical Failure):** $calamitas" >> "$bundle_out/Gambits.md"
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
        desc=$(jq -r '.description // empty' "$module_file")
        
        echo "## $name" >> "$bundle_out/Modules.md"
        echo "" >> "$bundle_out/Modules.md"
        [ -n "$desc" ] && echo "$desc" >> "$bundle_out/Modules.md" && echo "" >> "$bundle_out/Modules.md"
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
        desc=$(jq -r '.description // empty' "$loculus_file")
        
        echo "## $name" >> "$bundle_out/Loculi.md"
        echo "" >> "$bundle_out/Loculi.md"
        [ -n "$desc" ] && echo "$desc" >> "$bundle_out/Loculi.md" && echo "" >> "$bundle_out/Loculi.md"
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
        desc=$(jq -r '.description // empty' "$char_file")
        
        echo "## $name" >> "$bundle_out/Characters.md"
        echo "" >> "$bundle_out/Characters.md"
        [ -n "$desc" ] && echo "$desc" >> "$bundle_out/Characters.md" && echo "" >> "$bundle_out/Characters.md"
        echo "---" >> "$bundle_out/Characters.md"
        echo "" >> "$bundle_out/Characters.md"
      done
    fi
    
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
