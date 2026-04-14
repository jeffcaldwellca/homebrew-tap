cask "macspanso" do
  version "1.0.0"
  sha256 "0023fce5ab2c3114ee418a9279ec1f978d35199d6b875b7e38f4fb1503f6094a"

  url "https://github.com/jeffcaldwellca/macspanso/releases/download/v#{version}/macspanso-#{version}.dmg"
  name "macspanso"
  desc "macOS GUI for the espanso text expander"
  homepage "https://github.com/jeffcaldwellca/macspanso"

  depends_on cask: "espanso"

  app "macspanso.app"

  zap trash: [
    "~/Library/Preferences/com.macspanso.plist",
  ]
end
