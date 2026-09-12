cask "teleport-ftp" do
  version "1.0.7"
  sha256 "2ebe4917bd594ceede29759533e79b654c0ba7340e66b5b33dcafbd26608b096"

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
