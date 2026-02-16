class Clarity < Formula
  desc "CLI for Clarity Engine — think with AI agent teams"
  homepage "https://github.com/PrerakGada/clarity_engine"
  license "MIT"
  version "0.1.0-alpha.12"

  on_macos do
    on_arm do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.12/clarity-0.1.0-alpha.12-darwin-arm64.tar.gz"
      sha256 "48f4a5327bf34a491afb38b64472ecff9f26a628e6f9290eea3d9c7776258961"
    end
    on_intel do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.12/clarity-0.1.0-alpha.12-darwin-x64.tar.gz"
      sha256 "3ca053f5e1b80649c2e60dd0445a5c5ec07e81aacfe1831abbf7e4a2c8dbedbf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.12/clarity-0.1.0-alpha.12-linux-x64.tar.gz"
      sha256 "64db7940b37ffb934146cfc29375d0359c5695ae0d0f30b160131290c6ee959a"
    end
  end

  def install
    bin.install "bin/clarity"
    bin.install_symlink "#{bin}/clarity" => "ce"
  end

  test do
    assert_match "0.1.0-alpha.12", shell_output("#{bin}/clarity --version")
  end
end
