cask "patio" do
  arch arm: "arm64", intel: "amd64"

  version "0.9.5"
  sha256 arm:   "265105dbe09aa89c03b3b7c3ac6676e08bdfe0812e8a1cd83bcb599f02fd9b27",
         intel: "7973d75d3de5eae059fa877ebbcd7b5d9f7ca142f602e78c5d98e77811b6728b"

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
