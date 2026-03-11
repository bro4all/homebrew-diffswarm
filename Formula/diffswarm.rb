class Diffswarm < Formula
  desc "Repo-first BYOK PR review console"
  homepage "https://diffswarm.com"
  version "2.1.0"
  license "Proprietary"
  depends_on "bun"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.1.0/diffswarm-v2.1.0-darwin-arm64.tar.gz"
    sha256 "3d51ecfffa5c783abae2c2c8a7f2354c933250d34b3bbe84ce803d544998d0e7"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.1.0/diffswarm-v2.1.0-linux-x86_64.tar.gz"
    sha256 "5d80944005c66e50c8ab01dfb06ad7cb64e6952824046f62ae7b0273f28877c8"
  end

  def install
    libexec.install Dir["libexec/*"]
    bin.install "bin/diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
