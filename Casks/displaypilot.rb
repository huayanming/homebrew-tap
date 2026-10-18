cask "displaypilot" do
  version "7.1.0"
  sha256 "233fb6b3c4c11cd09f81950624774b4c99922c67685cbf30617e7578b01c7512"

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
