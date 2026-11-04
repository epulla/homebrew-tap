cask "patio" do
  arch arm: "arm64", intel: "amd64"

  version "0.10.2"
  sha256 arm:   "cc74aacca3ed69e513178850fd3936d879ab138160f028aae137c515d9c4346c",
         intel: "ee0ab2b52eeee6981f2055ab11b92336318757b8f402845d64dc47079a93ba06"

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
