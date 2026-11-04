cask "snipzy" do
  version "0.6.0"
  sha256 "77e3390763f246f9685142fc62e977a02b0d909f1892c108e17377335b449f14"

  url "https://github.com/epulla/snipzy/releases/download/v#{version}/Snipzy-#{version}.zip"
  name "Snipzy"
  desc "Menu bar snipping tool with annotation and OCR"
  homepage "https://github.com/epulla/snipzy"

  depends_on macos: :sonoma

  app "Snipzy.app"

  zap trash: "~/Library/Preferences/com.epulla.snipzy.plist"
end
