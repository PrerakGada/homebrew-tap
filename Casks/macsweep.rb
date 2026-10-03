# frozen_string_literal: true

cask "macsweep" do
  version "0.1.0"
  sha256 "893b5539fab83f2eb0946eca9efe853aa35d8d29b84794eeeb9420be3b48cba4"

  url "https://github.com/PrerakGada/macsweep-releases/releases/download/v#{version}/MacSweep-#{version}.zip"
  name "MacSweep"
  desc "Cleanup, storage map and security checks"
  homepage "https://macsweep.prerakgada.in/"

  # The alpha ships as a GitHub pre-release, which :github_latest skips; read the manifest the releases repository
  # carries instead (as MenuSprite does).
  livecheck do
    url "https://raw.githubusercontent.com/PrerakGada/macsweep-releases/main/version.json"
    strategy :json do |json|
      json["homebrewVersion"]
    end
  end

  depends_on arch: :arm64
  # A symbol means "this release or newer" (macOS 26 Tahoe and later).
  depends_on macos: :tahoe

  app "MacSweep.app"
  binary "#{appdir}/MacSweep.app/Contents/Helpers/macsweep"

  uninstall quit: "com.engaze.macsweep"

  # The app's own files only: settings, the database, quarantined items. Never anything it scanned.
  zap trash: [
    "~/Library/Application Support/MacSweep",
    "~/Library/Caches/com.engaze.macsweep",
    "~/Library/HTTPStorages/com.engaze.macsweep",
    "~/Library/Preferences/com.engaze.macsweep.plist",
    "~/Library/Saved Application State/com.engaze.macsweep.savedState",
  ]
end
