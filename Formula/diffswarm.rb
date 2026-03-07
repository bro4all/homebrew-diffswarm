class Diffswarm < Formula
  desc "Paid BYOK CLI for PR reviews"
  homepage "https://diffswarm.com"
  version "2.0.10"
  license "Proprietary"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.0.10/diffswarm-v2.0.10-darwin-arm64.tar.gz"
    sha256 "2ee6d0d582bc170c79aac14cc4d8e69ed9689968790b58778898987eb1dc32c0"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.0.10/diffswarm-v2.0.10-linux-x86_64.tar.gz"
    sha256 "61be2810a64d8cd3c1c63fc89a4b9a512a1f513998a7b73baca2a61fd2fa79d5"
  end

  def install
    bin.install "diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
