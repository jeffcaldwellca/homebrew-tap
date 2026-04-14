cask "macspanso" do
  version "1.0.0"
  sha256 "574bfd2694dfa1e05a5e8cd54c420a4a5056d12bf3e063090cbf24571d40987f"

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
