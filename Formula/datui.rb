# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.2.42, https://github.com/derekwisong/datui/releases/download/v0.2.42/datui-v0.2.42-aarch64-apple-darwin.tar.gz, a8306999823e020aa5cceda0112bf65b5b69942b2e4b8fa33477b5ec0fcd6f69,
# https://github.com/derekwisong/datui/releases/download/v0.2.42/datui-v0.2.42-x86_64-apple-darwin.tar.gz, 761af521dd5ca9812f43b171983e447495d40bb42276d1466c798f81bed5bf09.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.2.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.42/datui-v0.2.42-aarch64-apple-darwin.tar.gz"
      sha256 "a8306999823e020aa5cceda0112bf65b5b69942b2e4b8fa33477b5ec0fcd6f69"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.42/datui-v0.2.42-x86_64-apple-darwin.tar.gz"
      sha256 "761af521dd5ca9812f43b171983e447495d40bb42276d1466c798f81bed5bf09"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
