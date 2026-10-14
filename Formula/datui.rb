# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.4.8, https://github.com/derekwisong/datui/releases/download/v0.4.8/datui-v0.4.8-aarch64-apple-darwin.tar.gz, 57fb0ec17592d27afe6843e5a3349914b8941cd7b3fa000075f9b6b2d332db29,
# https://github.com/derekwisong/datui/releases/download/v0.4.8/datui-v0.4.8-x86_64-apple-darwin.tar.gz, cdc75b0d3feccea1c35d782d2c32a0771e07c33c7c4f6f5163e4dc91edff5add, and the URL_LINUX_*/SHA_LINUX_* pairs.
class Datui < Formula
# generated: desc
  desc "Explore tabular data in your terminal: Parquet, CSV, JSON and more"
# end generated: desc
  homepage "https://github.com/derekwisong/datui"
  version "0.4.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.8/datui-v0.4.8-aarch64-apple-darwin.tar.gz"
      sha256 "57fb0ec17592d27afe6843e5a3349914b8941cd7b3fa000075f9b6b2d332db29"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.8/datui-v0.4.8-x86_64-apple-darwin.tar.gz"
      sha256 "cdc75b0d3feccea1c35d782d2c32a0771e07c33c7c4f6f5163e4dc91edff5add"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.8/datui-v0.4.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f4840f6562fb81dee987333a0e62008fff59adefd824c7134f3d598e6f85e23f"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.8/datui-v0.4.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba5df4f6c32f5fdd9f55ab685eb0325bdd2fc22025ab572cc9b1cc1f0c97a009"
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
