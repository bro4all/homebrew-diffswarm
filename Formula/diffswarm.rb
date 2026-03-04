class Diffswarm < Formula
  desc "Paid BYOK CLI for PR reviews"
  homepage "https://diffswarm.com"
  version "2.0.8"
  license "Proprietary"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.0.8/diffswarm-v2.0.8-darwin-arm64.tar.gz"
    sha256 "5daefdf291015d1e735321545a5b55b9a4afb8611d3f12266b950af3a4a6e7c8"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.0.8/diffswarm-v2.0.8-linux-x86_64.tar.gz"
    sha256 "343b536752e0d9211d6c1d21ff974c07bd6770a2ef7d88d3e77da7785e79a38e"
  end

  def install
    bin.install "diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
