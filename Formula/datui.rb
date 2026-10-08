# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.4.3, https://github.com/derekwisong/datui/releases/download/v0.4.3/datui-v0.4.3-aarch64-apple-darwin.tar.gz, c4451639214b2ab8f0304cdff20f40169a434360b384cd1bb7d1887d7a96d185,
# https://github.com/derekwisong/datui/releases/download/v0.4.3/datui-v0.4.3-x86_64-apple-darwin.tar.gz, 49298024c8b6e438969b514588aef7dd61b824f276956280ca42330f082ed9f4, and the URL_LINUX_*/SHA_LINUX_* pairs.
class Datui < Formula
# generated: desc
  desc "Explore tabular data in your terminal: Parquet, CSV, JSON and more"
# end generated: desc
  homepage "https://github.com/derekwisong/datui"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.3/datui-v0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "c4451639214b2ab8f0304cdff20f40169a434360b384cd1bb7d1887d7a96d185"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.3/datui-v0.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "49298024c8b6e438969b514588aef7dd61b824f276956280ca42330f082ed9f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.3/datui-v0.4.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6541d7e1ec8faefb1c9197c9b527977300234c9e849e06f36b64d92bb615594d"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.3/datui-v0.4.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "840bd3d33691d41b2dfdc0534552592b914c9d2bdd304fd125a644b49b4edc99"
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
