# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.4.7, https://github.com/derekwisong/datui/releases/download/v0.4.7/datui-v0.4.7-aarch64-apple-darwin.tar.gz, 851aed60fbc0d536e29bbab53d58335cf61677cdd4fc4a39a72bb8852f687adf,
# https://github.com/derekwisong/datui/releases/download/v0.4.7/datui-v0.4.7-x86_64-apple-darwin.tar.gz, 767826b827da2826236f78f4191fea1ad87f33807819e2b497bf2ef565a6fe57, and the URL_LINUX_*/SHA_LINUX_* pairs.
class Datui < Formula
# generated: desc
  desc "Explore tabular data in your terminal: Parquet, CSV, JSON and more"
# end generated: desc
  homepage "https://github.com/derekwisong/datui"
  version "0.4.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.7/datui-v0.4.7-aarch64-apple-darwin.tar.gz"
      sha256 "851aed60fbc0d536e29bbab53d58335cf61677cdd4fc4a39a72bb8852f687adf"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.7/datui-v0.4.7-x86_64-apple-darwin.tar.gz"
      sha256 "767826b827da2826236f78f4191fea1ad87f33807819e2b497bf2ef565a6fe57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.7/datui-v0.4.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d3528c1f053a0f45ce3620161a34e0dfba228fdf8dc23bf0ebdf41a849691bbb"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.7/datui-v0.4.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e53ecc1c7a21f79577e93b39f9382db648bd2f5b038cb93a749d92ff5d0e40b8"
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
