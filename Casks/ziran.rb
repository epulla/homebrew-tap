cask "ziran" do
  version "0.1.10"
  sha256 "80ed5bc3897a8d058dbd090cdc64e119bb838f6cb100051fd15d86e6bafdf5f1"

  url "https://github.com/epulla/ziran/releases/download/v#{version}/Ziran-#{version}.zip"
  name "Ziran"
  desc "Keyboard-first window switcher"
  homepage "https://github.com/epulla/ziran"

  depends_on macos: :sonoma

  app "Ziran.app"

  zap trash: "~/Library/Preferences/com.epulla.ziran.plist"
end
