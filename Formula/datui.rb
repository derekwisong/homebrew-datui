# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.2.49, https://github.com/derekwisong/datui/releases/download/v0.2.49/datui-v0.2.49-aarch64-apple-darwin.tar.gz, 3a09c11febea3dc1501a5d9276c981c356f333105760878f312da8c6c081ec7f,
# https://github.com/derekwisong/datui/releases/download/v0.2.49/datui-v0.2.49-x86_64-apple-darwin.tar.gz, 7baf061fd954fbcc287f5927c33124f51ffa1a7372e53f63b53ebc1a56c16402.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.2.49"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.49/datui-v0.2.49-aarch64-apple-darwin.tar.gz"
      sha256 "3a09c11febea3dc1501a5d9276c981c356f333105760878f312da8c6c081ec7f"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.49/datui-v0.2.49-x86_64-apple-darwin.tar.gz"
      sha256 "7baf061fd954fbcc287f5927c33124f51ffa1a7372e53f63b53ebc1a56c16402"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
