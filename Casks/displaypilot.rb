cask "displaypilot" do
  version "7.1.3"
  sha256 "e5a59c9c3a84cb6a12a5d54ef0f8ab3e7b03fb7d6c4dd49b28091a71e02ef6bf"

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
