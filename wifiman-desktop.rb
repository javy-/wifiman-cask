cask "WiFiman Desktop (arm64)" do
  version "0.3.0"
  sha256 "47c1794e20d8a728f790beb26e8bdbd5a30a251fd421419d2589fb40ca3faf7a"

  url "https://desktop.wifiman.com/wifiman-desktop-0.3.0-mac-arm64.pkg",
      verified: "https://ui.com/download/app/wifiman-desktop"
  name "WiFiman Desktop"
  desc "Powerful WiFi Insights"
  homepage "desktop.wifiman.com"

  livecheck do
    url :url
  end

  app "WiFiman Desktop.app"

  uninstall pkgutil:

  zap trash: [
    "~/Library/Application Support/wifiman-desktop",
    "~/Library/Logs/wifiman-desktop",
    "~/Library/Preferences/com.ui.wifiman-desktop.plist",
    "~/Library/Saved Application State/com.ui.wifiman-desktop.savedState",
    "/var/db/receipts/com.ui.wifiman-desktop.bom",
    "/var/db/receipts/com.ui.wifiman-desktop.plist",
  ]
end
