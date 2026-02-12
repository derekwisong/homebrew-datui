# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.2.46, https://github.com/derekwisong/datui/releases/download/v0.2.46/datui-v0.2.46-aarch64-apple-darwin.tar.gz, 2e4146c01a60aeaa1c31156329c76410a8f6f3ea47a010df05b5aca31b66aeb7,
# https://github.com/derekwisong/datui/releases/download/v0.2.46/datui-v0.2.46-x86_64-apple-darwin.tar.gz, c96bc410eb1b45ef4417f99411461bf1c9cb2442ca908dc2d054c8a47e3cf026.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.2.46"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.46/datui-v0.2.46-aarch64-apple-darwin.tar.gz"
      sha256 "2e4146c01a60aeaa1c31156329c76410a8f6f3ea47a010df05b5aca31b66aeb7"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.46/datui-v0.2.46-x86_64-apple-darwin.tar.gz"
      sha256 "c96bc410eb1b45ef4417f99411461bf1c9cb2442ca908dc2d054c8a47e3cf026"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
