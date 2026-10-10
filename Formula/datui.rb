# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.4.5, https://github.com/derekwisong/datui/releases/download/v0.4.5/datui-v0.4.5-aarch64-apple-darwin.tar.gz, 81fb24bd41ee8578d398eb79870ceae4f0531ae8d4893e61e7192bcc1836284b,
# https://github.com/derekwisong/datui/releases/download/v0.4.5/datui-v0.4.5-x86_64-apple-darwin.tar.gz, 6f57bedf4463b947f12f5ec75a58fb2dfa2c7d9293ba579373dae2e1fd0580d8, and the URL_LINUX_*/SHA_LINUX_* pairs.
class Datui < Formula
# generated: desc
  desc "Explore tabular data in your terminal: Parquet, CSV, JSON and more"
# end generated: desc
  homepage "https://github.com/derekwisong/datui"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.5/datui-v0.4.5-aarch64-apple-darwin.tar.gz"
      sha256 "81fb24bd41ee8578d398eb79870ceae4f0531ae8d4893e61e7192bcc1836284b"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.5/datui-v0.4.5-x86_64-apple-darwin.tar.gz"
      sha256 "6f57bedf4463b947f12f5ec75a58fb2dfa2c7d9293ba579373dae2e1fd0580d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.5/datui-v0.4.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e85843fa5ac712f87a3cd6c510602161d27f3a126cdf843393ac7f10fa897ae5"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.5/datui-v0.4.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c27327c907274f6b6209300f71a96c309da7d7c4c7760eb87cb245f122741be1"
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
