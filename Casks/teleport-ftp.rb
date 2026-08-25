cask "teleport-ftp" do
  version "1.0.5"
  sha256 "2ef66d6e15ab52a2771068da4217e8fb928dceba8bac9a5abff16e4cc07d0ba0"

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
