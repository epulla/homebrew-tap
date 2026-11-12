cask "patio" do
  arch arm: "arm64", intel: "amd64"

  version "0.10.5"
  sha256 arm:   "22c2c5a09375e4b9e102d099f220aad2badfa64c070652f8460bf65665dc4f03",
         intel: "b07f6cab1ffe16897dd9e14e251f67f9636cdf1659e75db2dbfef4d3a51a8691"

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
