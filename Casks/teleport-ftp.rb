cask "teleport-ftp" do
  version "1.0.6"
  sha256 "748c1c4e1d1e79a40fd7fdaa05f07fcb486c18e509d2695bd9b0a231759f3ca1"

  url "https://github.com/jeffcaldwellca/teleport/releases/download/v#{version}/Teleport-#{version}.dmg"
  name "Teleport"
  desc "Native FTP, FTPS and SFTP client with the tport command-line tool built in"
  homepage "https://github.com/jeffcaldwellca/teleport"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Teleport.app"
  binary "#{appdir}/Teleport.app/Contents/Resources/tport"

  uninstall quit: "com.teleport.app"

  zap trash: [
    "~/Library/Application Support/Teleport",
    "~/Library/Containers/com.teleport.app",
    "~/Library/Preferences/com.teleport.app.plist",
    "~/Library/Saved Application State/com.teleport.app.savedState",
  ]
end
