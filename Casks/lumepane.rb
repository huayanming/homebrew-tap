cask "lumepane" do
  version "9.1.1"
  sha256 "12a5546594408b991e27a0bca2495fabcafeb719af8703121bec75c3ecbba1b1"

  url "https://lumepane.com/dl/LumePane-#{version}.dmg"
  name "LumePane"
  desc "Display control, calibration, safe cleanup and Glow Orb dock"
  homepage "https://lumepane.com/"


  depends_on macos: :sonoma

  app "LumePane.app"

  uninstall quit: "com.neeson.lumepane"

  zap trash: [
    "~/Library/Application Support/com.neeson.lumepane",
    "~/Library/Caches/com.neeson.lumepane",
    "~/Library/Preferences/com.neeson.lumepane.plist",
    "~/Library/Saved Application State/com.neeson.lumepane.savedState",
  ]

  caveats <<~EOS
    LumePane is a paid app with a 14-day, fully featured trial.
    Purchase (one-time, no subscription): https://lumepane.com/checkout?src=brew

    Note: the activation record lives in the login keychain, so `brew uninstall --zap`
    removes the app's files but not that record. Remove it in Keychain Access if you
    want a completely clean state.
  EOS
end
