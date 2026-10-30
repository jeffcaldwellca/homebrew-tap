cask "portdrop" do
  version "1.3.0"
  sha256 "f91648b7ab00da25ec26d4dd9c36f182156d34aa324681316085088c21db3d0c"

  url "https://github.com/jeffcaldwellca/portDrop/releases/download/v#{version}/PortDrop-#{version}.dmg"
  name "PortDrop"
  desc "Menu-bar utility that lists every process listening on a local TCP port"
  homepage "https://github.com/jeffcaldwellca/portDrop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "PortDrop.app"

  uninstall quit: "com.jeffcaldwell.PortDrop"

  zap trash: "~/Library/Preferences/com.jeffcaldwell.PortDrop.plist"
end
