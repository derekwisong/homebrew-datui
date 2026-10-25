# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.4.15, https://github.com/derekwisong/datui/releases/download/v0.4.15/datui-v0.4.15-aarch64-apple-darwin.tar.gz, 0ea25762619fe444d21b44d8145c840212700720e1b7681aa0c22beacaff4217,
# https://github.com/derekwisong/datui/releases/download/v0.4.15/datui-v0.4.15-x86_64-apple-darwin.tar.gz, c6fa39b63f32f95beeeefc9da14c4b6a2616b889ad865ff4bd60b91331c3870d, and the URL_LINUX_*/SHA_LINUX_* pairs.
class Datui < Formula
# generated: desc
  desc "Explore tabular data in your terminal: Parquet, CSV, JSON and more"
# end generated: desc
  homepage "https://github.com/derekwisong/datui"
  version "0.4.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.15/datui-v0.4.15-aarch64-apple-darwin.tar.gz"
      sha256 "0ea25762619fe444d21b44d8145c840212700720e1b7681aa0c22beacaff4217"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.15/datui-v0.4.15-x86_64-apple-darwin.tar.gz"
      sha256 "c6fa39b63f32f95beeeefc9da14c4b6a2616b889ad865ff4bd60b91331c3870d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.15/datui-v0.4.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aea851d90833ad18660953d20eb8f98381b55808a04fa1723d5cf674decdf650"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.15/datui-v0.4.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0145d780de13ded630132c5eb471cbd454e5edbb419a2a241d9d6b121aba7265"
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
