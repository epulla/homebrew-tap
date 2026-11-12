cask "patio" do
  arch arm: "arm64", intel: "amd64"

  version "0.11.1"
  sha256 arm:   "0bd76e01d412dcf0e44f85d43b23669f8c1e1bdf419413c99886e3e041672739",
         intel: "22407cdc58e9f4a0188b3c5c96bf3cca9edbc1f56d5ce0bbbab699e41d17541f"

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
