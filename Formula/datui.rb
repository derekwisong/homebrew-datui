# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.2.56, https://github.com/derekwisong/datui/releases/download/v0.2.56/datui-v0.2.56-aarch64-apple-darwin.tar.gz, efb05f85ee428c8268075206cf2c11fb768c2b6971701f9744b475d4ffe1433b,
# https://github.com/derekwisong/datui/releases/download/v0.2.56/datui-v0.2.56-x86_64-apple-darwin.tar.gz, 314e070c58b9997676a8bb3acf44e90aca4124233d97ccbf30f0fbd6dbdfa4f6.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.2.56"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.56/datui-v0.2.56-aarch64-apple-darwin.tar.gz"
      sha256 "efb05f85ee428c8268075206cf2c11fb768c2b6971701f9744b475d4ffe1433b"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.56/datui-v0.2.56-x86_64-apple-darwin.tar.gz"
      sha256 "314e070c58b9997676a8bb3acf44e90aca4124233d97ccbf30f0fbd6dbdfa4f6"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
