class Diffswarm < Formula
  desc "Paid BYOK CLI for PR reviews"
  homepage "https://diffswarm.com"
  version "2.0.4"
  license "Proprietary"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.0.4/diffswarm-v2.0.4-darwin-arm64.tar.gz"
    sha256 "23e35ba84655527604ede72325a9e4ed62395c33fd3b9eb924a62096095243e9"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.0.4/diffswarm-v2.0.4-linux-x86_64.tar.gz"
    sha256 "7e71873aafbd1bb269eb17f41fdee4a3ee406db00b7dea63618552e7cf71a434"
  end

  def install
    bin.install "diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
