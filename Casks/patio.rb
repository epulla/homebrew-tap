cask "patio" do
  arch arm: "arm64", intel: "amd64"

  version "0.11.0"
  sha256 arm:   "db64d9b50bf4e2c90ef8887805b424c28f1845dcd611c4fc13b1ee052afce16b",
         intel: "fa6be5277c9ce0e46412e03e894ddd39cb74a82389509c392c4b1982a69c132a"

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
