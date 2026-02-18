# Gryst TTRPG Documentation

Documentation site for the Gryst tabletop roleplaying game.

## Local Preview

```bash
# Install docsify-cli (one time)
npm i -g docsify-cli

# Serve locally
docsify serve docs
```

Then open http://localhost:3000

## Updating Docs

1. Edit files in your Obsidian vault (`/home/gwen/Gwenny/TTRPG Project/`)
2. Run the sync script:
   ```bash
   ./sync-docs.sh
   ```
3. Commit and push:
   ```bash
   git add . && git commit -m "Update docs" && git push
   ```

GitHub Pages will automatically update.

## Setup (Already Done)

GitHub Pages is configured to serve from the `/docs` folder on the `main` branch.

Settings → Pages → Source: `Deploy from a branch` → `main` → `/docs`
