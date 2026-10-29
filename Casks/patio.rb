cask "patio" do
  arch arm: "arm64", intel: "amd64"

  version "0.9.4"
  sha256 arm:   "31e729a675247cb5c452c1c7e6a13518e73a5a62ddff5f68aaa95c3c1c3a53da",
         intel: "24de06802e983c01e48792ad79455a68fad10f98d6cf07e736dbe980d07f9e7d"

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
