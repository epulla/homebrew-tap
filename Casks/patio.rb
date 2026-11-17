cask "patio" do
  arch arm: "arm64", intel: "amd64"

  version "0.12.0"
  sha256 arm:   "924719dd76cb626c1aec243029af6d4456b854115b9fcbc95591387e401a81ac",
         intel: "0183e0dfa940d9a0fdbb84486803b0414a225ffd98c18523e93399ac455d3d47"

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
