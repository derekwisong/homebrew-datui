# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.2.54, https://github.com/derekwisong/datui/releases/download/v0.2.54/datui-v0.2.54-aarch64-apple-darwin.tar.gz, b2413d378260e73cb54a0a94856f128681ae8b8f9a6cd03fea48cd6cf07bd1ca,
# https://github.com/derekwisong/datui/releases/download/v0.2.54/datui-v0.2.54-x86_64-apple-darwin.tar.gz, b84714a0fc880452b607bce409f8e1f0b921ff6836d0d7be5cec87a818c5f690.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.2.54"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.54/datui-v0.2.54-aarch64-apple-darwin.tar.gz"
      sha256 "b2413d378260e73cb54a0a94856f128681ae8b8f9a6cd03fea48cd6cf07bd1ca"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.54/datui-v0.2.54-x86_64-apple-darwin.tar.gz"
      sha256 "b84714a0fc880452b607bce409f8e1f0b921ff6836d0d7be5cec87a818c5f690"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
