cask "patio" do
  arch arm: "arm64", intel: "amd64"

  version "0.10.1"
  sha256 arm:   "e6a7c6a94bd63b248970b156ed4c710939cb8c02ad46966602ab7baa820d5f24",
         intel: "47d63d3185536789d20b0130c223d81e45f62fba8c40a96ab3e5141efbf10801"

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
