# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.4.9, https://github.com/derekwisong/datui/releases/download/v0.4.9/datui-v0.4.9-aarch64-apple-darwin.tar.gz, 3e2b2e26b799f9e3d746181ef8a3780e882e2a6e55834d30c7e4ad09a0dee1c6,
# https://github.com/derekwisong/datui/releases/download/v0.4.9/datui-v0.4.9-x86_64-apple-darwin.tar.gz, 9d91b8ba13801f5a0eadfdc385e587f852361efb3e79588cd87ab467411be4d3, and the URL_LINUX_*/SHA_LINUX_* pairs.
class Datui < Formula
# generated: desc
  desc "Explore tabular data in your terminal: Parquet, CSV, JSON and more"
# end generated: desc
  homepage "https://github.com/derekwisong/datui"
  version "0.4.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.9/datui-v0.4.9-aarch64-apple-darwin.tar.gz"
      sha256 "3e2b2e26b799f9e3d746181ef8a3780e882e2a6e55834d30c7e4ad09a0dee1c6"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.9/datui-v0.4.9-x86_64-apple-darwin.tar.gz"
      sha256 "9d91b8ba13801f5a0eadfdc385e587f852361efb3e79588cd87ab467411be4d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.9/datui-v0.4.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eaaecacb78756824c53b4688bd49d23dffa1f675bb5a8a1f8c1ed72458ad07f3"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.9/datui-v0.4.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "564492a055db18576b3603efbf8adcc79f9cf6bd7e6f4487fe844bf8801e6a27"
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
