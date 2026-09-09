# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.3.1, https://github.com/derekwisong/datui/releases/download/v0.3.1/datui-v0.3.1-aarch64-apple-darwin.tar.gz, 31cf7e8c2cd56a4d43cf489dae48ca3939279d2f0e3db52e8eec1ceb1eda4fa2,
# https://github.com/derekwisong/datui/releases/download/v0.3.1/datui-v0.3.1-x86_64-apple-darwin.tar.gz, 12895882e6838aec86d7c65e571a8a58d8fb92a937db4abbda65a0ef579e525d.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.3.1/datui-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "31cf7e8c2cd56a4d43cf489dae48ca3939279d2f0e3db52e8eec1ceb1eda4fa2"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.3.1/datui-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "12895882e6838aec86d7c65e571a8a58d8fb92a937db4abbda65a0ef579e525d"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
