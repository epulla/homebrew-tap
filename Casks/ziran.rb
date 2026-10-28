cask "ziran" do
  version "0.1.9"
  sha256 "8999b8f2d2764b51db09097e1eb17ce6cba2e5f4f2d510cd10e53caa7952439e"

  url "https://github.com/epulla/ziran/releases/download/v#{version}/Ziran-#{version}.zip"
  name "Ziran"
  desc "Keyboard-first window switcher"
  homepage "https://github.com/epulla/ziran"

  depends_on macos: :sonoma

  app "Ziran.app"

  zap trash: "~/Library/Preferences/com.epulla.ziran.plist"
end
