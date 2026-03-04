class Diffswarm < Formula
  desc "Paid BYOK CLI for PR reviews"
  homepage "https://diffswarm.com"
  version "2.0.7"
  license "Proprietary"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.0.7/diffswarm-v2.0.7-darwin-arm64.tar.gz"
    sha256 "bcbf165d4a06cadbe883d30df5aa8f63b4bd6a16c39c90b53101fb9ab7526896"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.0.7/diffswarm-v2.0.7-linux-x86_64.tar.gz"
    sha256 "82296d5277be35808475e6d64c2bbe979ab0e6ef73208f93fe30df687af58a89"
  end

  def install
    bin.install "diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
