# frozen_string_literal: true

cask "pastebook" do
  version "0.1.2"
  sha256 "277540d5c57c80a9549c0c3f7b87d6937fa640f487f7c6063815eb80c881e066"

  url "https://github.com/PrerakGada/pastebook-releases/releases/download/v#{version}/Pastebook-#{version}.zip"
  name "Pastebook"
  desc "Clipboard history with pinboards and an encrypted vault"
  homepage "https://pastebook.prerakgada.in/"

  # The alpha ships as a GitHub pre-release, which :github_latest skips; read the manifest the releases repository
  # carries instead (as MenuSprite does).
  livecheck do
    url "https://raw.githubusercontent.com/PrerakGada/pastebook-releases/main/version.json"
    strategy :json do |json|
      json["homebrewVersion"]
    end
  end

  depends_on arch: :arm64
  # A symbol means "this release or newer" (macOS 26 Tahoe and later).
  depends_on macos: :tahoe

  app "Pastebook.app"
  binary "#{appdir}/Pastebook.app/Contents/Helpers/pastebook"

  uninstall quit: "com.engaze.pastebook"

  # Pastebook's own files only. The iCloud Drive sync folder is left alone on purpose: deleting it would delete the
  # history on every other Mac that syncs through it.
  zap trash: [
    "~/Library/Application Support/Pastebook",
    "~/Library/Caches/com.engaze.pastebook",
    "~/Library/HTTPStorages/com.engaze.pastebook",
    "~/Library/Preferences/com.engaze.pastebook.plist",
    "~/Library/Saved Application State/com.engaze.pastebook.savedState",
  ]
end
