class Clarity < Formula
  desc "CLI for Clarity Engine — think with AI agent teams"
  homepage "https://github.com/PrerakGada/clarity_engine"
  url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.2/clarity-0.1.0-alpha.2.tar.gz"
  sha256 "a77cdb016273e0d44321d005c8f6d40c6736361f1dfcabd542996eefbe1d5c43"
  license "MIT"

  depends_on "node@22"

  def install
    bin.install "bin/clarity"
    bin.install_symlink "#{bin}/clarity" => "ce"
  end

  test do
    assert_match "0.1.0-alpha.1", shell_output("#{bin}/clarity --version")
  end
end
