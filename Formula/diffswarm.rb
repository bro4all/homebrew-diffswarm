class Diffswarm < Formula
  desc "Paid BYOK CLI for PR reviews"
  homepage "https://diffswarm.com"
  version "2.0.5"
  license "Proprietary"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.0.5/diffswarm-v2.0.5-darwin-arm64.tar.gz"
    sha256 "650d1c71deec63ab27fc00a5283e4af6d08092b57b4aae4fc2818b2112f150db"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.0.5/diffswarm-v2.0.5-linux-x86_64.tar.gz"
    sha256 "316d73cde49a36df07d0afe12481b15e27035a3e892fbf76f8d66c8f33714401"
  end

  def install
    bin.install "diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
