class Clarity < Formula
  desc "CLI for Clarity Engine — think with AI agent teams"
  homepage "https://github.com/PrerakGada/clarity_engine"
  license "MIT"
  version "0.1.0-alpha.11"

  on_macos do
    on_arm do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.11/clarity-0.1.0-alpha.11-darwin-arm64.tar.gz"
      sha256 "b6c4891856cd2dfdaf05b3fa385a744a41c14071d853e8f5a4cce9a47a690624"
    end
    on_intel do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.11/clarity-0.1.0-alpha.11-darwin-x64.tar.gz"
      sha256 "d83ba8217b0401562afcef9374e1a234c90cc62ba696a7af4f95c2d0443e3392"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.11/clarity-0.1.0-alpha.11-linux-x64.tar.gz"
      sha256 "75f052c559542709a340943ae057d90eda9b0fa2fa255cf6609677dcdef88a07"
    end
  end

  def install
    bin.install "bin/clarity"
    bin.install_symlink "#{bin}/clarity" => "ce"
  end

  test do
    assert_match "0.1.0-alpha.11", shell_output("#{bin}/clarity --version")
  end
end
