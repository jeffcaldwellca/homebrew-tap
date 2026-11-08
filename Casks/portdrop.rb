cask "portdrop" do
  version "1.3.1"
  sha256 "0df753bab1dbbd40595d7d72811f1df884871e73d141a30a695f5f5dff0f148d"

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
