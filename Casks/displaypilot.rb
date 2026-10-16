cask "displaypilot" do
  version "5.0.2"
  sha256 "d88cc144cb25b57dce109a7ac4f2dd93b33856268449bc49b07d26c9ccd73bdf"

  url "https://github.com/huayanming/displaypilot/releases/download/v#{version}/DisplayPilot-#{version}.dmg",
      verified: "github.com/huayanming/displaypilot/"
  name "DisplayPilot"
  desc "Display control, calibration and safe cleanup for macOS"
  homepage "https://huayanming.github.io/displaypilot/"

  app "DisplayPilot.app"

  caveats <<~EOS
    DisplayPilot is a paid app with a 14-day, fully featured trial.
    Purchase (one-time, no subscription): https://displaypilot-license.huayanming2019.workers.dev/buy
  EOS
end
