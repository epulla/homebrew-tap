cask "patio" do
  arch arm: "arm64", intel: "amd64"

  version "0.9.7"
  sha256 arm:   "d9c6405759b5659541a688db0a90233cdd4f1f222de71434cd1e1511f2cc39ac",
         intel: "f7a8f9edaf79513b6a2b245296ce71e7bc30ba5ca587778f965791349cad09c3"

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
