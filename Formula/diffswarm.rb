class Diffswarm < Formula
  desc "Paid BYOK CLI for PR reviews"
  homepage "https://diffswarm.com"
  version "0.1.11"
  license "Proprietary"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v0.1.11/diffswarm-v0.1.11-darwin-arm64.tar.gz"
    sha256 "d086808eed6aae2d0674f9605238c5a9286e40d77792b8a39088087a9504caa7"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v0.1.11/diffswarm-v0.1.11-linux-x86_64.tar.gz"
    sha256 "a0a103278cc4923b0496f5f6e601805c793a9047431ab84d6f35dedd94821df3"
  end

  def install
    bin.install "diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
