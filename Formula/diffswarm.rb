class Diffswarm < Formula
  desc "Paid BYOK CLI for PR reviews"
  homepage "https://diffswarm.com"
  version "0.1.10"
  license "Proprietary"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v0.1.10/diffswarm-v0.1.10-darwin-arm64.tar.gz"
    sha256 "aba2547788bb5c055ff8099d9d08f503a65677a7bc8e6ec178cc545392d2f0ef"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v0.1.10/diffswarm-v0.1.10-linux-x86_64.tar.gz"
    sha256 "ea7e6f923e67f40c4693f20687d7ab8008b4cd9cdc744fa5548b749c67a43f38"
  end

  def install
    bin.install "diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
