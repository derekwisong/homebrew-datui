# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.4.1, https://github.com/derekwisong/datui/releases/download/v0.4.1/datui-v0.4.1-aarch64-apple-darwin.tar.gz, 5d0e2d8d8b59c4454c03f055cad8e28482e406fef29758a6c379508ee7095fae,
# https://github.com/derekwisong/datui/releases/download/v0.4.1/datui-v0.4.1-x86_64-apple-darwin.tar.gz, 62d4d4269a6cf93b4b9d84863a580df4ff5b2fffc104b2809b74fd1486b2c947.
class Datui < Formula
# generated: desc
  desc "Explore tabular data in your terminal: Parquet, CSV, JSON and more"
# end generated: desc
  homepage "https://github.com/derekwisong/datui"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.1/datui-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "5d0e2d8d8b59c4454c03f055cad8e28482e406fef29758a6c379508ee7095fae"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.1/datui-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "62d4d4269a6cf93b4b9d84863a580df4ff5b2fffc104b2809b74fd1486b2c947"
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
