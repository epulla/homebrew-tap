cask "patio" do
  arch arm: "arm64", intel: "amd64"

  version "0.9.8"
  sha256 arm:   "7113f31b6ada4c15e7c9496596272cc2f705aab5933632f2ea7d13e1fa7bb674",
         intel: "d8539fb4f90edc508165276495e36288e9d9844901cc6a9ec7e5cf165043e47c"

  url "https://github.com/epulla/patio/releases/download/v#{version}/patio-darwin-#{arch}.zip"
  name "Patio"
  desc "Kanban boards with AI chats that can read and update your tickets"
  homepage "https://github.com/epulla/patio"

  depends_on :macos

  app "patio.app"

  zap trash: [
    "~/Library/Application Support/patio",
    "~/Library/Logs/patio",
    "~/Library/Preferences/io.github.epulla.patio.plist",
    "~/Library/WebKit/io.github.epulla.patio",
  ]
end
