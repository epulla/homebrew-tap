cask "snipzy" do
  version "0.4.1"
  sha256 "03616dbca04d1f9f0be0fee2849ccbd4dbd509996f9ac2a2d300af06ba5e1bcf"

  url "https://github.com/epulla/snipzy/releases/download/v#{version}/Snipzy-#{version}.zip"
  name "Snipzy"
  desc "Menu bar snipping tool with annotation and OCR"
  homepage "https://github.com/epulla/snipzy"

  depends_on macos: :sonoma

  app "Snipzy.app"

  zap trash: "~/Library/Preferences/com.epulla.snipzy.plist"
end
