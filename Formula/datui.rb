# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.3.0, https://github.com/derekwisong/datui/releases/download/v0.3.0/datui-v0.3.0-aarch64-apple-darwin.tar.gz, aaa9cfbe07c772fd8c4a26431fc223b08435e2451abe939eb5a151275f8a2d41,
# https://github.com/derekwisong/datui/releases/download/v0.3.0/datui-v0.3.0-x86_64-apple-darwin.tar.gz, a4ce9ae4f2d288c0a9d4ea1c1916d33e8da07b44d2acccf5b0bce2bad6b6abff.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.3.0/datui-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "aaa9cfbe07c772fd8c4a26431fc223b08435e2451abe939eb5a151275f8a2d41"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.3.0/datui-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "a4ce9ae4f2d288c0a9d4ea1c1916d33e8da07b44d2acccf5b0bce2bad6b6abff"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
