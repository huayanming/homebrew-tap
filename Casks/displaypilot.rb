cask "displaypilot" do
  version "5.7.3"
  sha256 "919a2f79c768295e43781e76fc2ff54b62ff2360daf7f7c31e894a2b77f7d6bc"

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
