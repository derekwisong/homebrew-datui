# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.4.0, https://github.com/derekwisong/datui/releases/download/v0.4.0/datui-v0.4.0-aarch64-apple-darwin.tar.gz, b3692ad859a918183d37fa62f89d39869bf9bcb81d0349797efa58827ac84dfe,
# https://github.com/derekwisong/datui/releases/download/v0.4.0/datui-v0.4.0-x86_64-apple-darwin.tar.gz, e562216c28389f729eee6f764fdf5c31662821b51ba1b7bb8045586f3889a46e.
class Datui < Formula
# generated: desc
  desc "Explore tabular data in your terminal: Parquet, CSV, JSON and more"
# end generated: desc
  homepage "https://github.com/derekwisong/datui"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.0/datui-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "b3692ad859a918183d37fa62f89d39869bf9bcb81d0349797efa58827ac84dfe"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.0/datui-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "e562216c28389f729eee6f764fdf5c31662821b51ba1b7bb8045586f3889a46e"
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
