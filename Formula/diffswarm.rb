class Diffswarm < Formula
  desc "Repo-first BYOK PR review console"
  homepage "https://diffswarm.com"
  version "2.4.0"
  license "Proprietary"
  depends_on "bun"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.4.0/diffswarm-v2.4.0-darwin-arm64.tar.gz"
    sha256 "9369cfbbb6f35e4f1c5cb3f82594881c8b82e8bc432546fa3cbb1686145fef14"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.4.0/diffswarm-v2.4.0-linux-x86_64.tar.gz"
    sha256 "48f485e7de5c8348d595cd59f1e66856a4e2ff344b0ceaf50a989ed0287e95a8"
  end

  def install
    libexec.install Dir["libexec/*"]
    bin.install "bin/diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
