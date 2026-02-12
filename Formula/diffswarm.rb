class Diffswarm < Formula
  desc "Paid BYOK CLI for PR reviews"
  homepage "https://diffswarm.com"
  version "0.1.8"
  license "Proprietary"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v0.1.8/diffswarm-v0.1.8-darwin-arm64.tar.gz"
    sha256 "28b4afaf160b04cda43cb6a38c18b8843190e69173b0fb2b2e74730092822110"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v0.1.8/diffswarm-v0.1.8-linux-x86_64.tar.gz"
    sha256 "058413f230bf80e781fa0746bc91dbec1646453e2619be745a9cd3088e6307d1"
  end

  def install
    bin.install "diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
