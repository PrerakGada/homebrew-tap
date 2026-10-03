# frozen_string_literal: true

cask "annotly" do
  version "0.1.1"
  sha256 "bad5f5233dde7ef6cedef05a97ced2b6589061df799b717a5c46bb75c2df6adb"

  url "https://github.com/PrerakGada/annotly-releases/releases/download/v#{version}/Annotly-#{version}.zip"
  name "Annotly"
  desc "Draw on the screen while presenting, then save the marked-up screen"
  homepage "https://annotly.prerakgada.in/"

  # The alpha ships as a GitHub pre-release, which :github_latest skips; read the manifest the releases repository
  # carries instead (as MenuSprite, Pastebook and Screenroll do).
  livecheck do
    url "https://raw.githubusercontent.com/PrerakGada/annotly-releases/main/version.json"
    strategy :json do |json|
      json["homebrewVersion"]
    end
  end

  depends_on arch: :arm64
  # A symbol means "this release or newer" (macOS 26 Tahoe and later).
  depends_on macos: :tahoe

  app "Annotly.app"
  binary "#{appdir}/Annotly.app/Contents/Helpers/annotly"

  uninstall quit: "com.engaze.annotly"

  # Annotly's own files only. Snaps exported to ~/Pictures/Annotly (or wherever the user pointed it) are the user's
  # files and are never zapped.
  zap trash: [
    "~/Library/Application Support/Annotly",
    "~/Library/Caches/com.engaze.annotly",
    "~/Library/HTTPStorages/com.engaze.annotly",
    "~/Library/Preferences/com.engaze.annotly.plist",
    "~/Library/Saved Application State/com.engaze.annotly.savedState",
  ]
end
