# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.4.11, https://github.com/derekwisong/datui/releases/download/v0.4.11/datui-v0.4.11-aarch64-apple-darwin.tar.gz, 647e4bdfb522793c8d3dd932d2fe3154f424e4e9410263fcfbcde89ff53c5d92,
# https://github.com/derekwisong/datui/releases/download/v0.4.11/datui-v0.4.11-x86_64-apple-darwin.tar.gz, 60eddd1fdb2d63607cbdeed231d695bdc850ab79a8d33a2669512e2eb213aca8, and the URL_LINUX_*/SHA_LINUX_* pairs.
class Datui < Formula
# generated: desc
  desc "Explore tabular data in your terminal: Parquet, CSV, JSON and more"
# end generated: desc
  homepage "https://github.com/derekwisong/datui"
  version "0.4.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.11/datui-v0.4.11-aarch64-apple-darwin.tar.gz"
      sha256 "647e4bdfb522793c8d3dd932d2fe3154f424e4e9410263fcfbcde89ff53c5d92"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.11/datui-v0.4.11-x86_64-apple-darwin.tar.gz"
      sha256 "60eddd1fdb2d63607cbdeed231d695bdc850ab79a8d33a2669512e2eb213aca8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.11/datui-v0.4.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4a7691ebaa8242b784ee8e0258e532dce4b2431de0484bac9adc3f9d8cb74ec9"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.11/datui-v0.4.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2227c0688869c9af272a6fa4cceac5c59ed121cf6e18d2c35dc9e50c1f5b1844"
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
