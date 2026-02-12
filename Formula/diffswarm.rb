class Diffswarm < Formula
  desc "Paid BYOK CLI for PR reviews"
  homepage "https://diffswarm.com"
  version "0.1.5"
  license "Proprietary"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v0.1.5/diffswarm-v0.1.5-darwin-arm64.tar.gz"
    sha256 "6b7d2b2afa11cb6ec5dee16e10d5c1e65b58b984230229baed114b1f43a727dd"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v0.1.5/diffswarm-v0.1.5-linux-x86_64.tar.gz"
    sha256 "b5bfb5a052265fc7a28bb617b2ce814c38c41e17014131338c57ede2ce7d3ce4"
  end

  def install
    bin.install "diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
