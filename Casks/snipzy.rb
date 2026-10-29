cask "snipzy" do
  version "0.5.3"
  sha256 "007460e16b3b3ca0f79eddba55d4976e512274ddc651456f06a3fc9d1a628f59"

  url "https://github.com/epulla/snipzy/releases/download/v#{version}/Snipzy-#{version}.zip"
  name "Snipzy"
  desc "Menu bar snipping tool with annotation and OCR"
  homepage "https://github.com/epulla/snipzy"

  depends_on macos: :sonoma

  app "Snipzy.app"

  zap trash: "~/Library/Preferences/com.epulla.snipzy.plist"
end
