# frozen_string_literal: true

cask "myna" do
  version "0.5.1"
  sha256 "1bd72a2c522c9df6f672b98abfcd6d8b1611b4ca3dfe0ef12af70c035afc5a1b" # release.yml rewrites this with the real DMG sha256

  url "https://github.com/PrerakGada/myna/releases/download/v#{version}/Myna-#{version}.dmg",
      verified: "github.com/PrerakGada/myna/"
  name "Myna"
  desc "Always-on local TTS companion"
  homepage "https://github.com/PrerakGada/myna"

  # Defer to Sparkle for in-app updates instead of fighting it on every
  # `brew upgrade`. Users still get cask-driven upgrades when they explicitly
  # ask for them, but unattended `brew upgrade` won't replace the .app while
  # Sparkle is mid-download.
  auto_updates true
  depends_on macos: :ventura
  depends_on formula: "myna-daemon"

  app "Myna.app"

  zap trash: [
    "~/Library/Application Support/Myna",
    "~/Library/Caches/Myna",
    "~/Library/Logs/Myna",
    "~/Library/Preferences/dev.myna.app.plist",
    "~/Library/Saved Application State/dev.myna.app.savedState",
  ]
end
