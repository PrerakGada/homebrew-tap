# frozen_string_literal: true

cask "menusprite" do
  version "0.4.0,8"
  sha256 "e937fa30a4a5b5caa6139c807183c02a69921f3707d92dd803f7547798c4c62f"

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

  uninstall quit: "in.prerakgada.MenuSprite"

  zap trash: [
    "~/Library/Application Support/MenuSprite",
    "~/Library/Caches/in.prerakgada.MenuSprite",
    "~/Library/Preferences/in.prerakgada.MenuSprite.plist",
    "~/Library/Saved Application State/in.prerakgada.MenuSprite.savedState",
  ]
end
