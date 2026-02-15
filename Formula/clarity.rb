class Clarity < Formula
  desc "CLI for Clarity Engine — think with AI agent teams"
  homepage "https://github.com/PrerakGada/clarity_engine"
  license "MIT"
  version "0.1.0-alpha.5"

  on_macos do
    on_arm do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.5/clarity-0.1.0-alpha.5-darwin-arm64.tar.gz"
      sha256 "a11c07a384c06b4068f2f89ccc82cf61ff222bcda081d54b78cbb2bada9bb36b"
    end
    on_intel do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.5/clarity-0.1.0-alpha.5-darwin-x64.tar.gz"
      sha256 "ec8781e3d63269d53ded10924f95fa949d03ee107e90865cc98019bbb02eff24"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.5/clarity-0.1.0-alpha.5-linux-x64.tar.gz"
      sha256 "ab99904ff41513ba03a88a25e31965d30a470e2bbd8a52c0d60694f8a20866e9"
    end
  end

  def install
    bin.install "bin/clarity"
    bin.install_symlink "#{bin}/clarity" => "ce"
  end

  test do
    assert_match "0.1.0-alpha.5", shell_output("#{bin}/clarity --version")
  end
end
