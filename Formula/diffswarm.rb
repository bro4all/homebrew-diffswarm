class Diffswarm < Formula
  desc "Repo-first BYOK PR review console"
  homepage "https://diffswarm.com"
  version "2.2.0"
  license "Proprietary"
  depends_on "bun"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.2.0/diffswarm-v2.2.0-darwin-arm64.tar.gz"
    sha256 "1903b18929c41971645b34a5d1ce1c88fba03024b7a49f7c38b507e130a8fd85"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.2.0/diffswarm-v2.2.0-linux-x86_64.tar.gz"
    sha256 "1644b63cfaa397a9f942f91f92a83f31b8c7d8074b32e49bd3c218a05238bce2"
  end

  def install
    libexec.install Dir["libexec/*"]
    bin.install "bin/diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
