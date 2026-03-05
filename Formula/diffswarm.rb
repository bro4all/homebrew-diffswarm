class Diffswarm < Formula
  desc "Paid BYOK CLI for PR reviews"
  homepage "https://diffswarm.com"
  version "2.0.9"
  license "Proprietary"

  on_macos do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.0.9/diffswarm-v2.0.9-darwin-arm64.tar.gz"
    sha256 "fcdb77a3490cdb98c92b18add6267ea1598440a6fb9267c9e0e330b1f4fe68b6"
  end

  on_linux do
    url "https://github.com/bro4all/homebrew-diffswarm/releases/download/v2.0.9/diffswarm-v2.0.9-linux-x86_64.tar.gz"
    sha256 "233c381e1bf89aaee26b5763c5a2de4efd565d2708ef9c0bd85bff6c663c2ae7"
  end

  def install
    bin.install "diffswarm"
  end

  test do
    assert_match "diffswarm", shell_output("#{bin}/diffswarm --version")
  end
end
