cask "portdrop" do
  version "1.1.0"
  sha256 "8208fecbca65d124cf32ffa43e004fecab06b5509378807c9f5030843c5a8a8e"

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
