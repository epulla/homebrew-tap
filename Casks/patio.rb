cask "patio" do
  arch arm: "arm64", intel: "amd64"

  version "0.10.4"
  sha256 arm:   "565f584c6f740dea4895e1ea5886cb4759ca7f67ab9cb47f08a6c687b10c3312",
         intel: "9d139a3327f1ef7273beb097ba9a386810cc3297bbdd7e599281043d506f4fa1"

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
