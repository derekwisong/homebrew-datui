# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.4.14, https://github.com/derekwisong/datui/releases/download/v0.4.14/datui-v0.4.14-aarch64-apple-darwin.tar.gz, 6ee67e34f9be5ca25f0a349c5e3de3d49558f38412bb7dc7cc15a9c69f1cf0e5,
# https://github.com/derekwisong/datui/releases/download/v0.4.14/datui-v0.4.14-x86_64-apple-darwin.tar.gz, 69d03b92e847174637a4880cebfc76314416bbf8241d85cab68be985dcc9660d, and the URL_LINUX_*/SHA_LINUX_* pairs.
class Datui < Formula
# generated: desc
  desc "Explore tabular data in your terminal: Parquet, CSV, JSON and more"
# end generated: desc
  homepage "https://github.com/derekwisong/datui"
  version "0.4.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.14/datui-v0.4.14-aarch64-apple-darwin.tar.gz"
      sha256 "6ee67e34f9be5ca25f0a349c5e3de3d49558f38412bb7dc7cc15a9c69f1cf0e5"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.14/datui-v0.4.14-x86_64-apple-darwin.tar.gz"
      sha256 "69d03b92e847174637a4880cebfc76314416bbf8241d85cab68be985dcc9660d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.14/datui-v0.4.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "06b510441dd80ed56bf0a432e8488421f3a191e02c7b6ffe89dc88cf648addad"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.14/datui-v0.4.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9ed8b0ceb4724e9c052edbe0c829927db9725baf6e9f5e75bc76a8ea20bd1510"
    end
  end

  def install
    bin.install "datui"
    # Archives from 0.4.0 carry man/manN/ and completions/; older ones a lone datui.1.
    if File.directory?("man")
      man1.install Dir["man/man1/*.1"]
      man5.install Dir["man/man5/*.5"]
      man7.install Dir["man/man7/*.7"]
      bash_completion.install "completions/datui.bash" => "datui"
      zsh_completion.install "completions/_datui"
      fish_completion.install "completions/datui.fish"
    else
      man1.install "datui.1"
    end
  end
end
