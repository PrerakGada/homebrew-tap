# frozen_string_literal: true

cask "menusprite" do
  version "0.6.0,21"
  sha256 "4f8b359e9589b4c007b3917eeece0f17d9c8fb6cd7a5bee8537117c4231ceced"

  url "https://github.com/PrerakGada/menusprite-releases/releases/download/v#{version.csv.first}-preview.1/MenuSprite-#{version.csv.first}-preview.1-arm64.zip"
  name "MenuSprite"
  desc "Customizable menu bar system monitor"
  homepage "https://github.com/PrerakGada/menusprite-releases"

  livecheck do
    url "https://raw.githubusercontent.com/PrerakGada/menusprite-releases/main/version.json"
    strategy :json do |json|
      json["homebrew_version"]
    end
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "MenuSprite.app"
  binary "#{appdir}/MenuSprite.app/Contents/Helpers/menusprite"

  uninstall quit: "in.prerakgada.MenuSprite"

  # The power daemon is removed on zap only: uninstall also runs on every upgrade, and booting the daemon out
  # there would ask for an administrator password each time. PowerHelper is the old developer-install label.
  zap launchctl: [
        "in.prerakgada.MenuSprite.PowerDaemon",
        "in.prerakgada.MenuSprite.PowerHelper",
      ],
      trash:     [
        "/Library/Application Support/MenuSprite",
        "~/Library/Application Support/MenuSprite",
        "~/Library/Caches/in.prerakgada.MenuSprite",
        "~/Library/Preferences/in.prerakgada.MenuSprite.plist",
        "~/Library/Saved Application State/in.prerakgada.MenuSprite.savedState",
      ]
end
