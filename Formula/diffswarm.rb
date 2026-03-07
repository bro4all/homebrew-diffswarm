class Diffswarm < Formula
  desc "Paid BYOK CLI for PR reviews"
  homepage "https://diffswarm.com"
  version "2.0.11"
  license "Proprietary"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.0.11/diffswarm-v2.0.11-darwin-arm64.tar.gz"
    sha256 "96e99ba7ae41f5d715682834a1e0e2e8b58fa9dc390da702b0ff536e0a2f1ead"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.0.11/diffswarm-v2.0.11-linux-x86_64.tar.gz"
    sha256 "bfd4396e8b5a8995ddd2917b55b50aa34ce1c2d769d077efb66851b5bf0cde52"
  end

  def install
    bin.install "diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
