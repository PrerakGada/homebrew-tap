class Clarity < Formula
  desc "CLI for Clarity Engine — think with AI agent teams"
  homepage "https://github.com/PrerakGada/clarity_engine"
  license "MIT"
  version "0.1.0-alpha.13"

  on_macos do
    on_arm do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.13/clarity-0.1.0-alpha.13-darwin-arm64.tar.gz"
      sha256 "db256c94b0b6244346a8850d4e080618c3bcfb242b6e577d7e80a67810089553"
    end
    on_intel do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.13/clarity-0.1.0-alpha.13-darwin-x64.tar.gz"
      sha256 "bceb3beb2b157dae475c58518c68931e3ace0fd9bc7792810679ed21c3509889"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.13/clarity-0.1.0-alpha.13-linux-x64.tar.gz"
      sha256 "3c5f43c7aea79c1a2f9c35d08efc01ca6847a54eb802f5343ab6f17533cff931"
    end
  end

  def install
    bin.install "bin/clarity"
    bin.install_symlink "#{bin}/clarity" => "ce"
  end

  test do
    assert_match "0.1.0-alpha.13", shell_output("#{bin}/clarity --version")
  end
end
