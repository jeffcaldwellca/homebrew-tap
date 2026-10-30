cask "portdrop" do
  version "1.2.3"
  sha256 "ce23bb4e832f3dbae3968900f7308941f87926221aa0cbe6911ba9d003328ea3"

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
