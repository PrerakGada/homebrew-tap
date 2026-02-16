class Clarity < Formula
  desc "CLI for Clarity Engine — think with AI agent teams"
  homepage "https://github.com/PrerakGada/clarity_engine"
  license "MIT"
  version "0.1.0-alpha.8"

  on_macos do
    on_arm do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.8/clarity-0.1.0-alpha.8-darwin-arm64.tar.gz"
      sha256 "400089f83f33e3acf93a192b6b6ba12569d48126cd3e0177501d691d6a156fa2"
    end
    on_intel do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.8/clarity-0.1.0-alpha.8-darwin-x64.tar.gz"
      sha256 "39a560cb78c8cdebe7313e4ce04bb1ddd412c0cd85c58f6b31052b041dd5fe83"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.8/clarity-0.1.0-alpha.8-linux-x64.tar.gz"
      sha256 "54325522278e7fef891efb8eade1ed1e6e1b828b6c7052e627420b797c987ca3"
    end
  end

  def install
    bin.install "bin/clarity"
    bin.install_symlink "#{bin}/clarity" => "ce"
  end

  test do
    assert_match "0.1.0-alpha.8", shell_output("#{bin}/clarity --version")
  end
end
