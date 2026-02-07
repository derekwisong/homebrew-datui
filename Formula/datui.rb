# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.2.37, https://github.com/derekwisong/datui/releases/download/v0.2.37/datui-v0.2.37-aarch64-apple-darwin.tar.gz, a6233a05286f4378eb16e75bfd244d3f97a28d48b2c3df06fc55ef6f17d1c550,
# https://github.com/derekwisong/datui/releases/download/v0.2.37/datui-v0.2.37-x86_64-apple-darwin.tar.gz, fb969661e31e4319e3e98d6aedaa8ab2ad2056e033a8c34812f1a0cb157ffdc7.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.2.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.37/datui-v0.2.37-aarch64-apple-darwin.tar.gz"
      sha256 "a6233a05286f4378eb16e75bfd244d3f97a28d48b2c3df06fc55ef6f17d1c550"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.37/datui-v0.2.37-x86_64-apple-darwin.tar.gz"
      sha256 "fb969661e31e4319e3e98d6aedaa8ab2ad2056e033a8c34812f1a0cb157ffdc7"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
