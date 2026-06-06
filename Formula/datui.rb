# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.2.55, https://github.com/derekwisong/datui/releases/download/v0.2.55/datui-v0.2.55-aarch64-apple-darwin.tar.gz, bd670eef3e455f8e341a786a9d7511ea5c548e37c8467f54ec726740aa5cec1d,
# https://github.com/derekwisong/datui/releases/download/v0.2.55/datui-v0.2.55-x86_64-apple-darwin.tar.gz, 2cca8b430d61daa682f7ca18d10fccf8416411a86c17c387f4cce2f60a35564c.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.2.55"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.55/datui-v0.2.55-aarch64-apple-darwin.tar.gz"
      sha256 "bd670eef3e455f8e341a786a9d7511ea5c548e37c8467f54ec726740aa5cec1d"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.55/datui-v0.2.55-x86_64-apple-darwin.tar.gz"
      sha256 "2cca8b430d61daa682f7ca18d10fccf8416411a86c17c387f4cce2f60a35564c"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
