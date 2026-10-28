cask "ziran" do
  version "0.1.11"
  sha256 "44d9f8b23575f471445d524962014b10e4d1ec84b8077286ab1733c7fa837c29"

  url "https://github.com/epulla/ziran/releases/download/v#{version}/Ziran-#{version}.zip"
  name "Ziran"
  desc "Keyboard-first window switcher"
  homepage "https://github.com/epulla/ziran"

  depends_on macos: :sonoma

  app "Ziran.app"

  zap trash: "~/Library/Preferences/com.epulla.ziran.plist"
end
