# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.4.4, https://github.com/derekwisong/datui/releases/download/v0.4.4/datui-v0.4.4-aarch64-apple-darwin.tar.gz, 4999c5ab40bedd456ece26760b5d582372162fc0de06409d14acd35a7ab8f4fb,
# https://github.com/derekwisong/datui/releases/download/v0.4.4/datui-v0.4.4-x86_64-apple-darwin.tar.gz, a01da676c9d174921b4adba9e2c37f4253ac171d25973919e832457547f6d545, and the URL_LINUX_*/SHA_LINUX_* pairs.
class Datui < Formula
# generated: desc
  desc "Explore tabular data in your terminal: Parquet, CSV, JSON and more"
# end generated: desc
  homepage "https://github.com/derekwisong/datui"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.4/datui-v0.4.4-aarch64-apple-darwin.tar.gz"
      sha256 "4999c5ab40bedd456ece26760b5d582372162fc0de06409d14acd35a7ab8f4fb"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.4/datui-v0.4.4-x86_64-apple-darwin.tar.gz"
      sha256 "a01da676c9d174921b4adba9e2c37f4253ac171d25973919e832457547f6d545"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.4/datui-v0.4.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7e1fa77b99a176fe7efd2d2156eec2a39daf1c588d7eadb2298be264971b5187"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.4/datui-v0.4.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d8e0cdfc14802036ef8d77beac97cd1262520d6256987014ceeabac9b17e3f80"
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
