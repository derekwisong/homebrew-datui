# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.2.53, https://github.com/derekwisong/datui/releases/download/v0.2.53/datui-v0.2.53-aarch64-apple-darwin.tar.gz, 69f51c70a5268855fc0b4c59136ea344384f59e72a5c6acdf187eec201d9f49e,
# https://github.com/derekwisong/datui/releases/download/v0.2.53/datui-v0.2.53-x86_64-apple-darwin.tar.gz, 812224a865ed807d9ea36b15a061607ba1f3ef8ca76a0a54442b1fd51be9a1ab.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.2.53"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.53/datui-v0.2.53-aarch64-apple-darwin.tar.gz"
      sha256 "69f51c70a5268855fc0b4c59136ea344384f59e72a5c6acdf187eec201d9f49e"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.53/datui-v0.2.53-x86_64-apple-darwin.tar.gz"
      sha256 "812224a865ed807d9ea36b15a061607ba1f3ef8ca76a0a54442b1fd51be9a1ab"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
