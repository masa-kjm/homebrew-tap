class Loadout < Formula
  desc "Local environment manager built around explicit desired state"
  homepage "https://github.com/masa-kjm/loadout"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/masa-kjm/loadout/releases/download/v0.8.2/loadout-v0.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "742ccc053227b85d7157bcc131914c3b79c4302e349f21754ba17f34b7ef35c1"
    end

    on_intel do
      url "https://github.com/masa-kjm/loadout/releases/download/v0.8.2/loadout-v0.8.2-x86_64-apple-darwin.tar.gz"
      sha256 "80031ca6850d7c56748bb40c5a3b8f7e3fd975cf6a8af6ee93dffdeaf56a5044"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/masa-kjm/loadout/releases/download/v0.8.2/loadout-v0.8.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b5fde37cc2f265b456f77241e926134988793569e626a08c506af5b1993ea5ca"
    end

    on_intel do
      url "https://github.com/masa-kjm/loadout/releases/download/v0.8.2/loadout-v0.8.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ec7b9de33c095c7af128f6bf5a44f2f67797db632ceeaf8a8053b5ac5c6eff20"
    end
  end

  def install
    bin.install "loadout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loadout --version")
  end
end
