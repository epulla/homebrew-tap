cask "snipzy" do
  version "0.4.0"
  sha256 "c25f881198b4636fe8e4516465e2f328252228654a5f84bb67647d8e34e6c9cc"

  url "https://github.com/epulla/snipzy/releases/download/v#{version}/Snipzy-#{version}.zip"
  name "Snipzy"
  desc "Menu bar snipping tool with annotation and OCR"
  homepage "https://github.com/epulla/snipzy"

  depends_on macos: ">= :sonoma"

  app "Snipzy.app"

  zap trash: "~/Library/Preferences/com.epulla.snipzy.plist"
end
