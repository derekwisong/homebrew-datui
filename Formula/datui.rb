# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.2.40, https://github.com/derekwisong/datui/releases/download/v0.2.40/datui-v0.2.40-aarch64-apple-darwin.tar.gz, beb1de22c90c6b1a64635d3bf36ca9fe584bb7cf4b3ce7fa7161503ad8fc1942,
# https://github.com/derekwisong/datui/releases/download/v0.2.40/datui-v0.2.40-x86_64-apple-darwin.tar.gz, 488f1a4a7e704e1cb1eb2e2510fd43e9e710ea6893e8404697a19fc80f13082e.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.2.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.40/datui-v0.2.40-aarch64-apple-darwin.tar.gz"
      sha256 "beb1de22c90c6b1a64635d3bf36ca9fe584bb7cf4b3ce7fa7161503ad8fc1942"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.40/datui-v0.2.40-x86_64-apple-darwin.tar.gz"
      sha256 "488f1a4a7e704e1cb1eb2e2510fd43e9e710ea6893e8404697a19fc80f13082e"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
