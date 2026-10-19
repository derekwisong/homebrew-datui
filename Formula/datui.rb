# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.4.13, https://github.com/derekwisong/datui/releases/download/v0.4.13/datui-v0.4.13-aarch64-apple-darwin.tar.gz, d87276126e3b0e08f8984fab064720d677c4ad5cf95a310b50325d7e6f0f9337,
# https://github.com/derekwisong/datui/releases/download/v0.4.13/datui-v0.4.13-x86_64-apple-darwin.tar.gz, cbe931b147b2825899faec594baad4f8fcae34e3719ae5738f76c01cb8e3c27b, and the URL_LINUX_*/SHA_LINUX_* pairs.
class Datui < Formula
# generated: desc
  desc "Explore tabular data in your terminal: Parquet, CSV, JSON and more"
# end generated: desc
  homepage "https://github.com/derekwisong/datui"
  version "0.4.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.13/datui-v0.4.13-aarch64-apple-darwin.tar.gz"
      sha256 "d87276126e3b0e08f8984fab064720d677c4ad5cf95a310b50325d7e6f0f9337"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.13/datui-v0.4.13-x86_64-apple-darwin.tar.gz"
      sha256 "cbe931b147b2825899faec594baad4f8fcae34e3719ae5738f76c01cb8e3c27b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.13/datui-v0.4.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7af023d30e3de861c2b384bee6d42089b1ed7bb520a7266af0fac43a0da836af"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.13/datui-v0.4.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4936a013fbce708ec343993737d21b411e0431da8c4bf7dfd395c0568240e8aa"
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
