cask "portdrop" do
  version "1.0.1"
  sha256 "e7a95be8ef3cfb7e353455c0fa0b1e14b5268c42128ae1d55fd5d2bba08a9a90"

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
