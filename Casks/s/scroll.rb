cask "scroll" do
  version "2.9"
  sha256 "8e8b2af8dab2965bef8e3c3053d0209b3dd4c6215a54b336d6eb17aeb3c83ce3"

  url "https://ryanhanson.dev/scroll/downloads/Scroll#{version}.dmg"
  name "Scroll"
  desc "Configure scrolling on Trackpad and Magic Mouse"
  homepage "https://ryanhanson.dev/scroll"

  livecheck do
    url "https://ryanhanson.dev/scroll/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Scroll.app"

  uninstall quit: "com.knollsoft.Scroll"

  zap trash: [
    "~/Library/Application Support/Scroll",
    "~/Library/Caches/com.knollsoft.Scroll",
    "~/Library/Cookies/com.knollsoft.Scroll.binarycookies",
    "~/Library/HTTPStorages/com.knollsoft.Scroll",
    "~/Library/HTTPStorages/com.knollsoft.Scroll.binarycookies",
    "~/Library/Preferences/com.knollsoft.Scroll.plist",
  ]
end
