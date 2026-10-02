# frozen_string_literal: true

cask "screenroll" do
  version "0.1.0"
  sha256 "c7c8d533d7fe4658745b07c931c104dbebdf376c337d2e7a416538b3c6d44e70"

  url "https://github.com/PrerakGada/screenroll-releases/releases/download/v#{version}/Screenroll-#{version}.zip"
  name "Screenroll"
  desc "Screenshots, annotation and screen recording with a capture history"
  homepage "https://screenroll.prerakgada.in/"

  # The alpha ships as a GitHub pre-release, which :github_latest skips; read the manifest the releases repository
  # carries instead (as MenuSprite does).
  livecheck do
    url "https://raw.githubusercontent.com/PrerakGada/screenroll-releases/main/version.json"
    strategy :json do |json|
      json["homebrewVersion"]
    end
  end

  depends_on arch: :arm64
  # A symbol means "this release or newer" (macOS 26 Tahoe and later).
  depends_on macos: :tahoe

  app "Screenroll.app"
  binary "#{appdir}/Screenroll.app/Contents/Helpers/screenroll"

  uninstall quit: "com.engaze.screenroll"

  # Screenroll's own files only. Screenshots and recordings saved to ~/Pictures/Screenroll (or wherever the user
  # pointed it) are the user's files and are never zapped.
  zap trash: [
    "~/Library/Application Support/Screenroll",
    "~/Library/Caches/com.engaze.screenroll",
    "~/Library/HTTPStorages/com.engaze.screenroll",
    "~/Library/Preferences/com.engaze.screenroll.plist",
    "~/Library/Saved Application State/com.engaze.screenroll.savedState",
  ]
end
