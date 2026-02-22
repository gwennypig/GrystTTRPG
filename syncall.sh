#!/usr/bin/env bash
#
# Sync everything: Codex from GrystForge bundles, then docs from Obsidian
#

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🔄 Running full sync..."
echo ""

# Sync Codex (GrystForge bundles → docs/codex)
"$SCRIPT_DIR/synccodex.sh"

echo ""

# Sync docs (Obsidian → docs/)
"$SCRIPT_DIR/sync-docs.sh"

echo ""
echo "✅ All syncs complete!"
