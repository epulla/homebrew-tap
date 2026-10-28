cask "ziran" do
  version "0.1.12"
  sha256 "5fea7186f3c02c52c4d5356e6e1cd0618d0ceb620cf97fbc3a2e6b223af58fd4"

  url "https://github.com/epulla/ziran/releases/download/v#{version}/Ziran-#{version}.zip"
  name "Ziran"
  desc "Keyboard-first window switcher"
  homepage "https://github.com/epulla/ziran"

  depends_on macos: :sonoma

  app "Ziran.app"

  zap trash: "~/Library/Preferences/com.epulla.ziran.plist"
end
