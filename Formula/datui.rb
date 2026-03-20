# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.2.51, https://github.com/derekwisong/datui/releases/download/v0.2.51/datui-v0.2.51-aarch64-apple-darwin.tar.gz, 21a061b87930da963a4756d9320d7d0daed1a27101fcd7f23966ace8de9d76a6,
# https://github.com/derekwisong/datui/releases/download/v0.2.51/datui-v0.2.51-x86_64-apple-darwin.tar.gz, ec1baee4d012585c39e30814b82f6e05507ab94d1443e5dd4176f5948f53a08d.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.2.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.51/datui-v0.2.51-aarch64-apple-darwin.tar.gz"
      sha256 "21a061b87930da963a4756d9320d7d0daed1a27101fcd7f23966ace8de9d76a6"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.51/datui-v0.2.51-x86_64-apple-darwin.tar.gz"
      sha256 "ec1baee4d012585c39e30814b82f6e05507ab94d1443e5dd4176f5948f53a08d"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
