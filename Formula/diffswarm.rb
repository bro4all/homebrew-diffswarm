class Diffswarm < Formula
  desc "Repo-first BYOK PR review console"
  homepage "https://diffswarm.com"
  version "2.1.1"
  license "Proprietary"
  depends_on "bun"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.1.1/diffswarm-v2.1.1-darwin-arm64.tar.gz"
    sha256 "30e9f559d5e7ef8365741d34dc28fe6a2c76cd70f11e8eca354e9ec365c716c4"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.1.1/diffswarm-v2.1.1-linux-x86_64.tar.gz"
    sha256 "536bc35734e234b9fe64a19e4c7b457be0d0d109f160124b2d0d83e19dd5962c"
  end

  def install
    libexec.install Dir["libexec/*"]
    bin.install "bin/diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
