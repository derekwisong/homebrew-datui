# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.2.41, https://github.com/derekwisong/datui/releases/download/v0.2.41/datui-v0.2.41-aarch64-apple-darwin.tar.gz, 0870d4a8c7a143947c29da75fdd72cb7b6b5cda69a7cf34a320529ef6d40a419,
# https://github.com/derekwisong/datui/releases/download/v0.2.41/datui-v0.2.41-x86_64-apple-darwin.tar.gz, 31b2b24f1f57bccd7804acab243444f22d4f4bf91612cc421ad66ddd89e91b4b.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.2.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.41/datui-v0.2.41-aarch64-apple-darwin.tar.gz"
      sha256 "0870d4a8c7a143947c29da75fdd72cb7b6b5cda69a7cf34a320529ef6d40a419"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.41/datui-v0.2.41-x86_64-apple-darwin.tar.gz"
      sha256 "31b2b24f1f57bccd7804acab243444f22d4f4bf91612cc421ad66ddd89e91b4b"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
