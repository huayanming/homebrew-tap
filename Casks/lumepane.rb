cask "lumepane" do
  version "9.1.9"
  sha256 "ca446bbebf12b2a3f92956832dd378abe7a4a3c6c3009b7db948f26d497a8e44"

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
