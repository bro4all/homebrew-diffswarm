class Diffswarm < Formula
  desc "Paid BYOK CLI for PR reviews"
  homepage "https://diffswarm.com"
  version "2.0.6"
  license "Proprietary"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.0.6/diffswarm-v2.0.6-darwin-arm64.tar.gz"
    sha256 "9e7647803cb6c8e9eab17d87de4508c999d38ff06543ca0ade1cd2541d195af5"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.0.6/diffswarm-v2.0.6-linux-x86_64.tar.gz"
    sha256 "6db19004cd9592dfa263249643831cb1050374daaa6eaef6c8a6e4708b6507be"
  end

  def install
    bin.install "diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
