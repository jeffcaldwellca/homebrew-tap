cask "portdrop" do
  version "1.0.0"
  sha256 "736655eb7b338e0ce6bc1d326622da5f7b0ddb6bb0cc93ea1ff547bca6d8916d"

  url "https://github.com/jeffcaldwellca/portDrop/releases/download/v#{version}/PortDrop-#{version}.dmg"
  name "PortDrop"
  desc "Menu-bar utility that lists every process listening on a local TCP port"
  homepage "https://github.com/jeffcaldwellca/portDrop"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "PortDrop.app"

  uninstall quit: "com.jeffcaldwell.PortDrop"

  zap trash: "~/Library/Preferences/com.jeffcaldwell.PortDrop.plist"
end
