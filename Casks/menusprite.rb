# frozen_string_literal: true

cask "menusprite" do
  version "0.5.5,16"
  sha256 "c6f7d60fabe76dc9bd4214026708a8d6a347bc447b2752300df35a3aa81eb1e0"

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
