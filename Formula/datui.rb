# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.2.52, https://github.com/derekwisong/datui/releases/download/v0.2.52/datui-v0.2.52-aarch64-apple-darwin.tar.gz, 81c353d52ffa1576215159235bb24c7d6f39455759a0f12bcb5b4b607d37c3fc,
# https://github.com/derekwisong/datui/releases/download/v0.2.52/datui-v0.2.52-x86_64-apple-darwin.tar.gz, b53c0fd410ebe03281205cdca9ff658404dcd1839cae2415d376c09748f52443.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.2.52"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.52/datui-v0.2.52-aarch64-apple-darwin.tar.gz"
      sha256 "81c353d52ffa1576215159235bb24c7d6f39455759a0f12bcb5b4b607d37c3fc"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.52/datui-v0.2.52-x86_64-apple-darwin.tar.gz"
      sha256 "b53c0fd410ebe03281205cdca9ff658404dcd1839cae2415d376c09748f52443"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
