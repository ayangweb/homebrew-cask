cask "singlebox" do
  version "59.6.0"
  sha256 "afb11569eaf55c524ee399bfad9f9bc6ca43034ee39b46c13b4d81164b041c05"

  url "https://cdn-2.webcatalog.io/singlebox2/Singlebox-#{version}-universal.dmg",
      verified: "cdn-2.webcatalog.io/singlebox2/"
  name "Singlebox"
  desc "Multi-account web browser"
  homepage "https://singlebox.app/en/"

  livecheck do
    url "https://cdn-2.webcatalog.io/singlebox2/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Singlebox.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.webcatalog.singlebox2.sfl*",
    "~/Library/Application Support/Singlebox",
    "~/Library/Application Support/Singlebox2",
    "~/Library/Preferences/com.webcatalog.singlebox2.plist",
    "~/Library/Saved Application State/com.webcatalog.singlebox2.savedState",
  ]
end
