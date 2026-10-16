# homebrew-tap

Homebrew casks for [DisplayPilot](https://huayanming.github.io/displaypilot/) and anything else published here.

## Install

```bash
brew install --cask huayanming/tap/displaypilot
```

`brew install` taps the repository automatically, so the explicit `brew tap huayanming/tap` is only needed once.

## Upgrade

```bash
brew upgrade --cask displaypilot
```

## Notes

- The disk image is signed with a Developer ID certificate and notarised by Apple; Gatekeeper accepts it on first open.
- The app is a paid product with a 14-day trial. Homebrew installs the trial like any other cask; the licence is entered inside the app.
- This tap exists because the app does not yet meet Homebrew's notability bar for `homebrew/cask`. Once it does, the cask will be submitted upstream and this tap will point at the same artefact.
- Requires **macOS 14 (Sonoma) or later**; the cask declares it, so Homebrew refuses to install on older systems.
- The cask carries a `livecheck` block: `brew livecheck --cask huayanming/tap/displaypilot` reports whether it is behind the latest GitHub release. It passes `brew style` and `brew audit --strict` with no offenses.
- `brew uninstall --cask --zap displaypilot` removes the app and its files (`~/Library/Application Support/com.neeson.displaypilot`, `~/Library/Preferences/com.neeson.displaypilot.plist`, caches, saved state). **The activation record lives in the login keychain**, which `zap` cannot touch — remove it in Keychain Access for a completely clean state.
