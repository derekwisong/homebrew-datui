# Homebrew formula for datui. Placeholders are substituted by .github/workflows/release.yml
# when updating the tap: 0.2.34, https://github.com/derekwisong/datui/releases/download/v0.2.34/datui-v0.2.34-aarch64-apple-darwin.tar.gz, 205861809f84e0ac9828d87cec7d744056e7f26646da108c06006862e369cc15,
# https://github.com/derekwisong/datui/releases/download/v0.2.34/datui-v0.2.34-x86_64-apple-darwin.tar.gz, 052976d29ab97ca8f00f14bcee58a42ffe17fdb81d2538a8aca64329c9ceeabe.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.2.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.34/datui-v0.2.34-aarch64-apple-darwin.tar.gz"
      sha256 "205861809f84e0ac9828d87cec7d744056e7f26646da108c06006862e369cc15"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.34/datui-v0.2.34-x86_64-apple-darwin.tar.gz"
      sha256 "052976d29ab97ca8f00f14bcee58a42ffe17fdb81d2538a8aca64329c9ceeabe"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
