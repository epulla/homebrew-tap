cask "snipzy" do
  version "0.5.0"
  sha256 "ef756672a590cee281828c311075ce7d42a7d932094f4e2ab37079fe68d3e534"

  url "https://github.com/epulla/snipzy/releases/download/v#{version}/Snipzy-#{version}.zip"
  name "Snipzy"
  desc "Menu bar snipping tool with annotation and OCR"
  homepage "https://github.com/epulla/snipzy"

  depends_on macos: :sonoma

  app "Snipzy.app"

  zap trash: "~/Library/Preferences/com.epulla.snipzy.plist"
end
