class Diffswarm < Formula
  desc "Repo-first BYOK PR review console"
  homepage "https://diffswarm.com"
  version "2.4.1"
  license "Proprietary"
  depends_on "bun"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.4.1/diffswarm-v2.4.1-darwin-arm64.tar.gz"
    sha256 "c318d43ded81130a7beac923de0eb83240cf696104df8835273978aaa1abf88b"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.4.1/diffswarm-v2.4.1-linux-x86_64.tar.gz"
    sha256 "86c89ea5ea6b616f4f9277ced8ca642f772b7dde9f6b2739a3aa3b6facc13a97"
  end

  def install
    libexec.install Dir["libexec/*"]
    bin.install "bin/diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
