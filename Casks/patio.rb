cask "patio" do
  arch arm: "arm64", intel: "amd64"

  version "0.9.6"
  sha256 arm:   "97d7b288110f8ac3d95a71126eb9a6a04fd75473598ba726e161fcec4d36f37e",
         intel: "d8feaebcfffb7b0574f31f9deb634e7009e7550ad9f0447f22c67cdf66841f26"

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
