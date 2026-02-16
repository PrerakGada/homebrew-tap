class Clarity < Formula
  desc "CLI for Clarity Engine — think with AI agent teams"
  homepage "https://github.com/PrerakGada/clarity_engine"
  license "MIT"
  version "0.1.0-alpha.10"

  on_macos do
    on_arm do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.10/clarity-0.1.0-alpha.10-darwin-arm64.tar.gz"
      sha256 "9e1b217702764d9a952f59c7495824877e73122b20e0dc11e101acc31c565386"
    end
    on_intel do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.10/clarity-0.1.0-alpha.10-darwin-x64.tar.gz"
      sha256 "2b1d36d6ea35f3104adf86ea7794234ff1cda122712e7805eb55f9329c227245"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.10/clarity-0.1.0-alpha.10-linux-x64.tar.gz"
      sha256 "00bdfff4305f8767113ba134d35236d2fabcaf2f0620df91c30ec671cb1df2c7"
    end
  end

  def install
    bin.install "bin/clarity"
    bin.install_symlink "#{bin}/clarity" => "ce"
  end

  test do
    assert_match "0.1.0-alpha.10", shell_output("#{bin}/clarity --version")
  end
end
