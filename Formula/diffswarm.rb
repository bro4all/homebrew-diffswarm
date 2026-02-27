class Diffswarm < Formula
  desc "Paid BYOK CLI for PR reviews"
  homepage "https://diffswarm.com"
  version "2.0.2"
  license "Proprietary"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.0.2/diffswarm-v2.0.2-darwin-arm64.tar.gz"
    sha256 "a60de7391f646366e70741970f1bc56655424fbbfde599ec4152c7745ed1eb94"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.0.2/diffswarm-v2.0.2-linux-x86_64.tar.gz"
    sha256 "4132005c4cbdc9d55df9785eff8628f056fe9c306d380e75ce070d7ae1b8456f"
  end

  def install
    bin.install "diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
