cask "macspanso" do
  version "1.2.0"
  sha256 "3d46ec0ceced2000446b057af0d9856ad6c0be63034630fa1bc56543a5f52eb5"

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
