cask "macspanso" do
  version "1.0.0"
  sha256 "e0dbe9412965400497721f9e1ae6ff837998f99d4e226cb5567a4ebbfde44411"

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
