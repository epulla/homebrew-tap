cask "patio" do
  arch arm: "arm64", intel: "amd64"

  version "0.10.0"
  sha256 arm:   "c964a4daad6777421c5a5c54b23b9935cb3867a420c4775842fc9c998502fafc",
         intel: "a43eaa43777fdd37aed6e39dac21b358cc4e6272b46533115408435633514c07"

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
