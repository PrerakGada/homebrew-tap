class Clarity < Formula
  desc "CLI for Clarity Engine — think with AI agent teams"
  homepage "https://github.com/PrerakGada/clarity_engine"
  license "MIT"
  version "0.1.0-alpha.9"

  on_macos do
    on_arm do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.9/clarity-0.1.0-alpha.9-darwin-arm64.tar.gz"
      sha256 "ff49483bee14286f94bc87d7fac4e35c32801899684409f0da40b7fc459b488d"
    end
    on_intel do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.9/clarity-0.1.0-alpha.9-darwin-x64.tar.gz"
      sha256 "8da91eca07c1f3121e24eb36d90e49600cacc65ea4b4b4bdf75dc4706112bc41"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.9/clarity-0.1.0-alpha.9-linux-x64.tar.gz"
      sha256 "218fb2b16a909e62ec7b264976389fb73117d42d596fbc30e0792003ebb116ba"
    end
  end

  def install
    bin.install "bin/clarity"
    bin.install_symlink "#{bin}/clarity" => "ce"
  end

  test do
    assert_match "0.1.0-alpha.9", shell_output("#{bin}/clarity --version")
  end
end
