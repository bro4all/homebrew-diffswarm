class Diffswarm < Formula
  desc "Paid BYOK CLI for PR reviews"
  homepage "https://diffswarm.com"
  version "0.1.9"
  license "Proprietary"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v0.1.9/diffswarm-v0.1.9-darwin-arm64.tar.gz"
    sha256 "8a58f5f37256bc68a2d7fc417677f1dd6292b0bc07d0479292ba3f8bd9af84aa"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v0.1.9/diffswarm-v0.1.9-linux-x86_64.tar.gz"
    sha256 "fc17fc3f0df3d01a149767a4f5b9beee9baf2812595df8fcd4551361b84a8204"
  end

  def install
    bin.install "diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
