cask "displaypilot" do
  version "7.1.1"
  sha256 "eb958a456e31ac027520ae0765ca57441d2f009c4a3a6df926c4264b5ab733de"

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
