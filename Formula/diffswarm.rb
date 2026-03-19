class Diffswarm < Formula
  desc "Repo-first BYOK PR review console"
  homepage "https://diffswarm.com"
  version "2.1.2"
  license "Proprietary"
  depends_on "bun"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.1.2/diffswarm-v2.1.2-darwin-arm64.tar.gz"
    sha256 "c60c23b12d409e8cacc425720bf34c6d605b4f2e29f99f6f5040d1a40f02fbf0"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.1.2/diffswarm-v2.1.2-linux-x86_64.tar.gz"
    sha256 "d3ed024a0807ce3061eebd3df72a18e54ce355d1266cef5135a9174845853ce0"
  end

  def install
    libexec.install Dir["libexec/*"]
    bin.install "bin/diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
