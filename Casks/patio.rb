cask "patio" do
  arch arm: "arm64", intel: "amd64"

  version "0.11.2"
  sha256 arm:   "542ab3a2dd0bd6e0eccb1c02a393c3d776f4f3397646c2fa1501783c12d168bb",
         intel: "3717149d93e190677ccd537d851133c5e9694bc6196847c7e299bd9207bf8b26"

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
