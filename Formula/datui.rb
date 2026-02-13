# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.2.48, https://github.com/derekwisong/datui/releases/download/v0.2.48/datui-v0.2.48-aarch64-apple-darwin.tar.gz, ba14bf1aa74d05f4c1dc18a0461ba36785d6f72a6de870cfec41dae782c7fbd3,
# https://github.com/derekwisong/datui/releases/download/v0.2.48/datui-v0.2.48-x86_64-apple-darwin.tar.gz, c7dd19f70fcaf00bdbbbb855c6e6181afa488f3aee3476f2472691fde54bf9e5.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.2.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.48/datui-v0.2.48-aarch64-apple-darwin.tar.gz"
      sha256 "ba14bf1aa74d05f4c1dc18a0461ba36785d6f72a6de870cfec41dae782c7fbd3"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.48/datui-v0.2.48-x86_64-apple-darwin.tar.gz"
      sha256 "c7dd19f70fcaf00bdbbbb855c6e6181afa488f3aee3476f2472691fde54bf9e5"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
