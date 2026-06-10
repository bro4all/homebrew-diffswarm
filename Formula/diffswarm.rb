class Diffswarm < Formula
  desc "Repo-first BYOK PR review console"
  homepage "https://diffswarm.com"
  version "2.3.0"
  license "Proprietary"
  depends_on "bun"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.3.0/diffswarm-v2.3.0-darwin-arm64.tar.gz"
    sha256 "a18b5482648fe234d7dc59ef16a81163bf87768549af2711c73c171755f192e1"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.3.0/diffswarm-v2.3.0-linux-x86_64.tar.gz"
    sha256 "57188626d77344bbf2b563bef2dffa7209aab447987866fe9a8e9ed15f7df055"
  end

  def install
    libexec.install Dir["libexec/*"]
    bin.install "bin/diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
