# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.3.2, https://github.com/derekwisong/datui/releases/download/v0.3.2/datui-v0.3.2-aarch64-apple-darwin.tar.gz, e96b9256764e39f43dfd419f911c8b30d23856a2731e8eac61eac9c48a94cadb,
# https://github.com/derekwisong/datui/releases/download/v0.3.2/datui-v0.3.2-x86_64-apple-darwin.tar.gz, 1b19f3561283302fb3a9f943076ce8a64bb4c1d7d2eec0936c07f38eb1ec5e08.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.3.2/datui-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "e96b9256764e39f43dfd419f911c8b30d23856a2731e8eac61eac9c48a94cadb"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.3.2/datui-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "1b19f3561283302fb3a9f943076ce8a64bb4c1d7d2eec0936c07f38eb1ec5e08"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
