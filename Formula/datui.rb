# Homebrew formula for datui. Placeholders are substituted by .github/workflows/publish-packages.yml
# when updating the tap: 0.4.12, https://github.com/derekwisong/datui/releases/download/v0.4.12/datui-v0.4.12-aarch64-apple-darwin.tar.gz, fbc40109e3ed30c322d327162b16c00d43918574ef9c2e9664bd1e4f4f7dd467,
# https://github.com/derekwisong/datui/releases/download/v0.4.12/datui-v0.4.12-x86_64-apple-darwin.tar.gz, 3599e38248fdec747f579c0a3dc69815515c5bff91237980c05485c4a6c43462, and the URL_LINUX_*/SHA_LINUX_* pairs.
class Datui < Formula
# generated: desc
  desc "Explore tabular data in your terminal: Parquet, CSV, JSON and more"
# end generated: desc
  homepage "https://github.com/derekwisong/datui"
  version "0.4.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.12/datui-v0.4.12-aarch64-apple-darwin.tar.gz"
      sha256 "fbc40109e3ed30c322d327162b16c00d43918574ef9c2e9664bd1e4f4f7dd467"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.12/datui-v0.4.12-x86_64-apple-darwin.tar.gz"
      sha256 "3599e38248fdec747f579c0a3dc69815515c5bff91237980c05485c4a6c43462"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.12/datui-v0.4.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "752ede1c867b36137d202c55857cec2a89888e00037f0494c8dcc663f57ce959"
    end
    on_intel do
      url "https://github.com/derekwisong/datui/releases/download/v0.4.12/datui-v0.4.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "135975c3d90812ac0fc0dd194c97c3ddfc69b322ed61eb04d232f67f8d5a055a"
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
