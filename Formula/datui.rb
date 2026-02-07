# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.2.38, https://github.com/derekwisong/datui/releases/download/v0.2.38/datui-v0.2.38-aarch64-apple-darwin.tar.gz, 65842530ad5013a9bd08fe778fd3e362326d7c25fd9a4ee4731ef4452dd37143,
# https://github.com/derekwisong/datui/releases/download/v0.2.38/datui-v0.2.38-x86_64-apple-darwin.tar.gz, 702e6e4039a8f01c2cd92a57d74e3564f684bf3e8633822757ab25a9eecc5010.
class Datui < Formula
  desc "Data Exploration in the Terminal"
  homepage "https://github.com/derekwisong/datui"
  version "0.2.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.38/datui-v0.2.38-aarch64-apple-darwin.tar.gz"
      sha256 "65842530ad5013a9bd08fe778fd3e362326d7c25fd9a4ee4731ef4452dd37143"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.2.38/datui-v0.2.38-x86_64-apple-darwin.tar.gz"
      sha256 "702e6e4039a8f01c2cd92a57d74e3564f684bf3e8633822757ab25a9eecc5010"
    end
  end

  def install
    bin.install "datui"
    man1.install "datui.1"
  end
end
