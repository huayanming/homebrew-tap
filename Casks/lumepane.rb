cask "lumepane" do
  version "9.1.3"
  sha256 "1c35a9ed6bb6bc2b321e7bad5c5d14ad5dc8deb6a83de0a1e93a8860aba97b27"

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
