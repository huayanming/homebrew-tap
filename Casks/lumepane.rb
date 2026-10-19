cask "lumepane" do
  version "9.0.0"
  sha256 "baf938f8ea9a2778c8d3e8c806e9df4909d05962b9e324e5fa18a56d12cca15e"

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
