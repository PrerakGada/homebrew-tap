class Clarity < Formula
  desc "CLI for Clarity Engine — think with AI agent teams"
  homepage "https://github.com/PrerakGada/clarity_engine"
  license "MIT"
  version "0.1.0-alpha.6"

  on_macos do
    on_arm do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.6/clarity-0.1.0-alpha.6-darwin-arm64.tar.gz"
      sha256 "3296ee40dbfc335336b1bc11f973b39fc2877eac099a2a914b0ac1705c576f96"
    end
    on_intel do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.6/clarity-0.1.0-alpha.6-darwin-x64.tar.gz"
      sha256 "0275ab01b00db0c8ef915e6ff5a230cbaf5cb35518b5aaff012243353204ad1d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.6/clarity-0.1.0-alpha.6-linux-x64.tar.gz"
      sha256 "30966ce8248144e43e8b7bc264ca21d8cdc383ebbc05200721e5245cf0a56bf8"
    end
  end

  def install
    bin.install "bin/clarity"
    bin.install_symlink "#{bin}/clarity" => "ce"
  end

  test do
    assert_match "0.1.0-alpha.6", shell_output("#{bin}/clarity --version")
  end
end
