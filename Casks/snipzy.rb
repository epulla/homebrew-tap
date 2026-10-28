cask "snipzy" do
  version "0.5.1"
  sha256 "55b6746d0af5327c01981abdb838162cf3339c89330ad7e64dd6f0cae7531dd0"

  url "https://github.com/epulla/snipzy/releases/download/v#{version}/Snipzy-#{version}.zip"
  name "Snipzy"
  desc "Menu bar snipping tool with annotation and OCR"
  homepage "https://github.com/epulla/snipzy"

  depends_on macos: :sonoma

  app "Snipzy.app"

  zap trash: "~/Library/Preferences/com.epulla.snipzy.plist"
end
