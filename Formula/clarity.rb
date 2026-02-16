class Clarity < Formula
  desc "CLI for Clarity Engine — think with AI agent teams"
  homepage "https://github.com/PrerakGada/clarity_engine"
  license "MIT"
  version "0.1.0-alpha.7"

  on_macos do
    on_arm do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.7/clarity-0.1.0-alpha.7-darwin-arm64.tar.gz"
      sha256 "05cecd53a4f891983e4664892fad383b9a36aefb3e9d4918562aaaee0df7cf25"
    end
    on_intel do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.7/clarity-0.1.0-alpha.7-darwin-x64.tar.gz"
      sha256 "4c51fa9918aef57217a4542ade8e50a0312776c5b76a62b291cd407933d454da"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.7/clarity-0.1.0-alpha.7-linux-x64.tar.gz"
      sha256 "7f70bf62e036e3595f8731b6da2f7433218184ec9a3547731ea76cfba79934c5"
    end
  end

  def install
    bin.install "bin/clarity"
    bin.install_symlink "#{bin}/clarity" => "ce"
  end

  test do
    assert_match "0.1.0-alpha.7", shell_output("#{bin}/clarity --version")
  end
end
