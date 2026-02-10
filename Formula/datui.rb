# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.2.43, https://github.com/derekwisong/datui/releases/download/v0.2.43/datui-v0.2.43-aarch64-apple-darwin.tar.gz, a53d4a0dc3c366464fefbd7316063bc4e1cb9c7b009144714e88255a2a1e9079,
# https://github.com/derekwisong/datui/releases/download/v0.2.43/datui-v0.2.43-x86_64-apple-darwin.tar.gz, 3d5b76d1f36a7b6102a3ce4837e629a0bab145e34ca0dd0a7aba562fc6fef3a1.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.2.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.43/datui-v0.2.43-aarch64-apple-darwin.tar.gz"
      sha256 "a53d4a0dc3c366464fefbd7316063bc4e1cb9c7b009144714e88255a2a1e9079"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.43/datui-v0.2.43-x86_64-apple-darwin.tar.gz"
      sha256 "3d5b76d1f36a7b6102a3ce4837e629a0bab145e34ca0dd0a7aba562fc6fef3a1"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
