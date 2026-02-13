# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.2.47, https://github.com/derekwisong/datui/releases/download/v0.2.47/datui-v0.2.47-aarch64-apple-darwin.tar.gz, bcd031b0f4376127cc200e9e3b4de7078ecc62d1812c3d7f81fe564bbea0bf5f,
# https://github.com/derekwisong/datui/releases/download/v0.2.47/datui-v0.2.47-x86_64-apple-darwin.tar.gz, 45c0a596d6608a6ed9df6722327735472878e0c37f6e15957d4a5938a33359a1.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.2.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.47/datui-v0.2.47-aarch64-apple-darwin.tar.gz"
      sha256 "bcd031b0f4376127cc200e9e3b4de7078ecc62d1812c3d7f81fe564bbea0bf5f"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.47/datui-v0.2.47-x86_64-apple-darwin.tar.gz"
      sha256 "45c0a596d6608a6ed9df6722327735472878e0c37f6e15957d4a5938a33359a1"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
