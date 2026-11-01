cask "patio" do
  arch arm: "arm64", intel: "amd64"

  version "0.9.9"
  sha256 arm:   "0168d6449c04a226e26f11de6fce6c8a70f4bb52fd206cfd64c4513ae1703251",
         intel: "3ff6a0dce457095a176fb2c50f46b9e11e8e68200a46bd05e67d14c0b04d2738"

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
