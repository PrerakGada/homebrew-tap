# frozen_string_literal: true

cask "menusprite" do
  version "0.5.9,20"
  sha256 "b5fe332437c3c493282a6e816eab643af76a4c47a1ad9407f7fe67a9c7062985"

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
