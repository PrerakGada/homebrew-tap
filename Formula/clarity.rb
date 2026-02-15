class Clarity < Formula
  desc "CLI for Clarity Engine — think with AI agent teams"
  homepage "https://github.com/PrerakGada/clarity_engine"
  url "https://github.com/PrerakGada/clarity_engine/releases/download/cli-v0.1.0-alpha.1/clarity-0.1.0-alpha.1.tar.gz"
  sha256 "PLACEHOLDER"
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
