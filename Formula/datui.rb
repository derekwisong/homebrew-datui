# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.2.39, https://github.com/derekwisong/datui/releases/download/v0.2.39/datui-v0.2.39-aarch64-apple-darwin.tar.gz, 25ae2482286b6ecacd7026bd69acd81a6659ef3f82de85ee8f2c68ea027e0c00,
# https://github.com/derekwisong/datui/releases/download/v0.2.39/datui-v0.2.39-x86_64-apple-darwin.tar.gz, 87dcb78dc7989ab928a99850297a30994a797c9325a289247656fa5063843387.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.2.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.39/datui-v0.2.39-aarch64-apple-darwin.tar.gz"
      sha256 "25ae2482286b6ecacd7026bd69acd81a6659ef3f82de85ee8f2c68ea027e0c00"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.39/datui-v0.2.39-x86_64-apple-darwin.tar.gz"
      sha256 "87dcb78dc7989ab928a99850297a30994a797c9325a289247656fa5063843387"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
