cask "patio" do
  arch arm: "arm64", intel: "amd64"

  version "0.12.1"
  sha256 arm:   "a5365bd7034e446f1e5b279fb45f90f9a1ec583b4b05addc151add621823f2fc",
         intel: "060368dc5b0661e6144aa71c1850458ca0292f0e0833860b728fd8ad10148cc0"

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
