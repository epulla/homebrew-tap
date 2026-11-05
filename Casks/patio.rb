cask "patio" do
  arch arm: "arm64", intel: "amd64"

  version "0.10.3"
  sha256 arm:   "d637a6c5358d320f8c7aeb1938dae9bdaf9881abdcd01e0e98c3cddcc6e04366",
         intel: "50045aa6c81ec41fb9eab94b97e0237f0b008ea84aa756eb6556e1304222f717"

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
