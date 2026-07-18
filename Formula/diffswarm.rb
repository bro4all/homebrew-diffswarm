class Diffswarm < Formula
  desc "Repo-first BYOK PR review console"
  homepage "https://diffswarm.com"
  version "2.5.0"
  license "Proprietary"
  depends_on "bun"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.5.0/diffswarm-v2.5.0-darwin-arm64.tar.gz"
    sha256 "3a0dc1b5f2bf279e3e93781e68ba2a91387b20b1859196d80242cbdaa23368d9"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.5.0/diffswarm-v2.5.0-linux-x86_64.tar.gz"
    sha256 "ea9f274be9f21ace9e2b22ee68426052f61894846beef88512821c6ce085e6c3"
  end

  def install
    libexec.install Dir["libexec/*"]
    bin.install "bin/diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
