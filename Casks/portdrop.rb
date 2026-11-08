cask "portdrop" do
  version "1.3.2"
  sha256 "1d9cbed91bba2085e879ef2f5e2cc005669abb294f85bf49e740bea673bba456"

  url "https://www.jeffcaldwell.ca/portDrop/download/v#{version}/PortDrop-#{version}.dmg"
  name "PortDrop"
  desc "Menu-bar utility that lists every process listening on a local TCP port"
  homepage "https://www.jeffcaldwell.ca/portDrop/"

  livecheck do
    url "https://www.jeffcaldwell.ca/portDrop/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

  app "PortDrop.app"

  uninstall quit: "com.jeffcaldwell.PortDrop"

  zap trash: "~/Library/Preferences/com.jeffcaldwell.PortDrop.plist"
end
