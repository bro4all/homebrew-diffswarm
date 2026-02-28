class Diffswarm < Formula
  desc "Paid BYOK CLI for PR reviews"
  homepage "https://diffswarm.com"
  version "2.0.3"
  license "Proprietary"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.0.3/diffswarm-v2.0.3-darwin-arm64.tar.gz"
    sha256 "1276d9beb5875e17099e3309c5b83e17740907a9817cf56b1581bbf6bf614e74"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.0.3/diffswarm-v2.0.3-linux-x86_64.tar.gz"
    sha256 "340d56c6cfeb6df4ac33c4cf6fa1005fafe247ddabb4d3b9984f9ae787ce7e92"
  end

  def install
    bin.install "diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
