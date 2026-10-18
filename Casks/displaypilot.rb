cask "displaypilot" do
  version "7.0.0"
  sha256 "77380d67347f5212e8ca9901ba38522f85f289504495e9758b00e4c17ee398c6"

  url "https://github.com/huayanming/displaypilot/releases/download/v#{version}/DisplayPilot-#{version}.dmg"
  name "DisplayPilot"
  desc "Display control, calibration and safe cleanup"
  homepage "https://huayanming.github.io/displaypilot/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "DisplayPilot.app"

  uninstall quit: "com.neeson.displaypilot"

  zap trash: [
    "~/Library/Application Support/com.neeson.displaypilot",
    "~/Library/Caches/com.neeson.displaypilot",
    "~/Library/Preferences/com.neeson.displaypilot.plist",
    "~/Library/Saved Application State/com.neeson.displaypilot.savedState",
  ]

  caveats <<~EOS
    DisplayPilot is a paid app with a 14-day, fully featured trial.
    Purchase (one-time, no subscription): https://huayanming.github.io/displaypilot/?src=brew#buy

    Note: the activation record lives in the login keychain, so `brew uninstall --zap`
    removes the app's files but not that record. Remove it in Keychain Access if you
    want a completely clean state.
  EOS
end
