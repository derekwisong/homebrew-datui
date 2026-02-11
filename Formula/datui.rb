# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.2.44, https://github.com/derekwisong/datui/releases/download/v0.2.44/datui-v0.2.44-aarch64-apple-darwin.tar.gz, 4017e46b84adb43d72b177d7b3692092bd988fc4c92fc72eb2af0b888ba35215,
# https://github.com/derekwisong/datui/releases/download/v0.2.44/datui-v0.2.44-x86_64-apple-darwin.tar.gz, 2a1b9d6c243b0c1d6967edfae6f28011afc015092216ac59e2d644fe3c8e376c.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.2.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.44/datui-v0.2.44-aarch64-apple-darwin.tar.gz"
      sha256 "4017e46b84adb43d72b177d7b3692092bd988fc4c92fc72eb2af0b888ba35215"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.44/datui-v0.2.44-x86_64-apple-darwin.tar.gz"
      sha256 "2a1b9d6c243b0c1d6967edfae6f28011afc015092216ac59e2d644fe3c8e376c"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
