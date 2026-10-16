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
