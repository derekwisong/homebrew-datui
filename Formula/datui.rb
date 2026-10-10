# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.4.6, https://github.com/derekwisong/datui/releases/download/v0.4.6/datui-v0.4.6-aarch64-apple-darwin.tar.gz, 4008c3a7087ab83bf001ab9f5dfcf322613b871a593354c8c937a8a8f0853ad0,
# https://github.com/derekwisong/datui/releases/download/v0.4.6/datui-v0.4.6-x86_64-apple-darwin.tar.gz, ec66819d8ea9dc7e472d624bdd56b307b560fe747f7870cdd216143d7786f95d, and the URL_LINUX_*/SHA_LINUX_* pairs.
class Datui < Formula
# generated: desc
  desc "Explore tabular data in your terminal: Parquet, CSV, JSON and more"
# end generated: desc
  homepage "https://github.com/derekwisong/datui"
  version "0.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.6/datui-v0.4.6-aarch64-apple-darwin.tar.gz"
      sha256 "4008c3a7087ab83bf001ab9f5dfcf322613b871a593354c8c937a8a8f0853ad0"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.6/datui-v0.4.6-x86_64-apple-darwin.tar.gz"
      sha256 "ec66819d8ea9dc7e472d624bdd56b307b560fe747f7870cdd216143d7786f95d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.6/datui-v0.4.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7d0a039f92e6e7f979daeab69bc47b10f5d8f8e46dc478291b1248a98b1d0dad"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.6/datui-v0.4.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e35a2c04e3679cd1bed2c257814820161d3a8f9ae60cf04eebb1056008925d80"
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
