# khameedk/homebrew-tap

Homebrew tap for [SwipeSwitch](https://github.com/khameedk/SwipeSwitch): switch Mac apps and windows with a
three-finger trackpad swipe.

```bash
brew tap khameedk/tap
brew trust --cask khameedk/tap/swipeswitch
brew install --cask khameedk/tap/swipeswitch
```

Homebrew asks you to trust casks from taps other than its own before it installs them; the `brew trust` line
does that for SwipeSwitch only (undo with `brew untrust --cask khameedk/tap/swipeswitch`).

SwipeSwitch isn't notarized by Apple, so macOS blocks its first launch: open **System Settings › Privacy &
Security**, scroll down and click **Open Anyway**, then grant Accessibility access when asked.

Update with `brew upgrade --cask swipeswitch`. The cask is updated automatically when SwipeSwitch publishes a
new release (checked daily).
