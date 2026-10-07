# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.4.2, https://github.com/derekwisong/datui/releases/download/v0.4.2/datui-v0.4.2-aarch64-apple-darwin.tar.gz, 92ff1baed710a2893beba5ae871bfacfd451634ead1ae4385e9362fe834b2417,
# https://github.com/derekwisong/datui/releases/download/v0.4.2/datui-v0.4.2-x86_64-apple-darwin.tar.gz, 22478eb35347217ef305544c1c82b7e039a588544b87440d7c893155a9559e72, and the URL_LINUX_*/SHA_LINUX_* pairs.
class Datui < Formula
# generated: desc
  desc "Explore tabular data in your terminal: Parquet, CSV, JSON and more"
# end generated: desc
  homepage "https://github.com/derekwisong/datui"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.2/datui-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "92ff1baed710a2893beba5ae871bfacfd451634ead1ae4385e9362fe834b2417"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.2/datui-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "22478eb35347217ef305544c1c82b7e039a588544b87440d7c893155a9559e72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.2/datui-v0.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e6ec41327eb5b17967daa7c866b276a1ea78331e923eca4082e682c7d8c17e6e"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.2/datui-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d3320d9a481b5600da2f69bfc13d39c4d3036225a77d4df4fcdb3a83932abaa"
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
