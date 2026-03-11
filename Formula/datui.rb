# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.2.50, https://github.com/derekwisong/datui/releases/download/v0.2.50/datui-v0.2.50-aarch64-apple-darwin.tar.gz, a209bc835243e5410ae4896f1fe0302812a4ce7b102002121d15e7fd4640f9dd,
# https://github.com/derekwisong/datui/releases/download/v0.2.50/datui-v0.2.50-x86_64-apple-darwin.tar.gz, 9140b7442943523ff524f9f33ac1975e8b7df011d23d34ce030c3e9f40086e7c.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.2.50"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.50/datui-v0.2.50-aarch64-apple-darwin.tar.gz"
      sha256 "a209bc835243e5410ae4896f1fe0302812a4ce7b102002121d15e7fd4640f9dd"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.50/datui-v0.2.50-x86_64-apple-darwin.tar.gz"
      sha256 "9140b7442943523ff524f9f33ac1975e8b7df011d23d34ce030c3e9f40086e7c"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
