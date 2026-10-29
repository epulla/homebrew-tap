# AGENTS.md

Homebrew tap for epulla's macOS apps. Users install with `brew install --cask epulla/tap/<app>`.

## Adding an app

1. Add `Casks/<app>.rb`: `version`, `sha256`, `url` to the GitHub release zip, `name`, `desc`, `homepage`, `depends_on`, `app`, `zap trash`.
   - Separate Apple Silicon and Intel zips: use `arch arm: "arm64", intel: "amd64"` and `sha256 arm: "…", intel: "…"` (see `Casks/patio.rb`).
   - The app's repo must be public, or release URLs 404 for brew.
2. Update `README.md`: the app list in the intro line and the `brew install` commands.
3. Keep the GitHub repo description generic ("Homebrew casks for epulla's macOS apps"). Never list apps there.
4. Auto-bump: give the app's repo its own write deploy key on this tap and set its private key as the `HOMEBREW_TAP_DEPLOY_KEY` secret in the app repo. The app's `release.yml` then checks out this tap after publishing, updates `version` and the checksums in its cask, commits `<app> <version>`, and pushes. Don't store the private key anywhere else.
5. Verify before pushing:
   - `brew style --cask epulla/tap/<app>`
   - `brew audit --cask --online epulla/tap/<app>`
   - `brew install --cask --appdir=<temp dir> epulla/tap/<app>`, then `brew uninstall --cask epulla/tap/<app>`

## Conventions

- Commit messages: `<app> <version>` for version updates; plain descriptions otherwise.
- Apps are ad-hoc signed and not notarized. Don't add quarantine-stripping hooks; the README tells users to use **Open Anyway**.
- Edit casks by hand only when adding an app or changing its fields; release workflows own `version` and `sha256`.
