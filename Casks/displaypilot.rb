cask "displaypilot" do
  version "7.1.7"
  sha256 "2eefe85543606e1dac6bfcf835b96797b8173b087dacf54a9009029298d79a59"

  url "https://lumepane.com/dl/DisplayPilot-#{version}.dmg"
  name "LumePane"
  desc "Display control, calibration and safe cleanup"
  homepage "https://lumepane.com/"


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
    LumePane is a paid app with a 14-day, fully featured trial.
    Purchase (one-time, no subscription): https://lumepane.com/checkout?src=brew

    Note: the activation record lives in the login keychain, so `brew uninstall --zap`
    removes the app's files but not that record. Remove it in Keychain Access if you
    want a completely clean state.
  EOS
end
