# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.4.10, https://github.com/derekwisong/datui/releases/download/v0.4.10/datui-v0.4.10-aarch64-apple-darwin.tar.gz, 0b9c2f5470cca3c4f12e0740572e134fa8e1baa47ad59a4ccbebd44b41cbae42,
# https://github.com/derekwisong/datui/releases/download/v0.4.10/datui-v0.4.10-x86_64-apple-darwin.tar.gz, 0b745d0f5c617c1f865cb7acb50b731da3bc350d590c9cbba05bbca0ef6eecea, and the URL_LINUX_*/SHA_LINUX_* pairs.
class Datui < Formula
# generated: desc
  desc "Explore tabular data in your terminal: Parquet, CSV, JSON and more"
# end generated: desc
  homepage "https://github.com/derekwisong/datui"
  version "0.4.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.10/datui-v0.4.10-aarch64-apple-darwin.tar.gz"
      sha256 "0b9c2f5470cca3c4f12e0740572e134fa8e1baa47ad59a4ccbebd44b41cbae42"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.10/datui-v0.4.10-x86_64-apple-darwin.tar.gz"
      sha256 "0b745d0f5c617c1f865cb7acb50b731da3bc350d590c9cbba05bbca0ef6eecea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.10/datui-v0.4.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ef94837d6bb31bfd4e154bc75fafa7648d06a358c6dc95d5c3129507b8ef20b6"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.10/datui-v0.4.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "92080a43197f356b846702b733cc4da2a58f48abb1f1f2398ad49e759051484a"
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
