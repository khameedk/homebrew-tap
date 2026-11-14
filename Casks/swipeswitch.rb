cask "swipeswitch" do
  version "1.3.0"
  sha256 "bbbc020293292c0c4076156457eb10b1a98c6d5e57972437ca640f9f98440029"

  url "https://github.com/khameedk/SwipeSwitch/releases/download/v#{version}/SwipeSwitch-v#{version}.zip"
  name "SwipeSwitch"
  desc "Switch apps and windows with a three-finger trackpad swipe"
  homepage "https://github.com/khameedk/SwipeSwitch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "SwipeSwitch.app"

  uninstall quit: "io.github.khameedk.swipeswitch"

  zap trash: "~/Library/Preferences/io.github.khameedk.swipeswitch.plist"

  caveats <<~EOS
    SwipeSwitch isn't notarized by Apple, so macOS blocks its first launch.
    Open System Settings › Privacy & Security, scroll down and click "Open Anyway",
    then grant Accessibility access when asked.
  EOS
end
