class Loadout < Formula
  desc "Local environment manager built around explicit desired state"
  homepage "https://github.com/masa-kjm/loadout"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/masa-kjm/loadout/releases/download/v0.6.0/loadout-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "85a8afe45f14a5028fcecacfe9635072679e9389fc4eb5013c034a9c2c89ebce"
    end

    on_intel do
      url "https://github.com/masa-kjm/loadout/releases/download/v0.6.0/loadout-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "c25c12b6d6e9366912c3effa3efa6a423670a742676479f9f6c44ff103a0ca15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/masa-kjm/loadout/releases/download/v0.6.0/loadout-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e7313cdd6f117ae3f3d10a383437d0fbe180ebe61fdb0f51a4629574679c5110"
    end

    on_intel do
      url "https://github.com/masa-kjm/loadout/releases/download/v0.6.0/loadout-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d158beb70eb7d154acee83fadaf0886504cb4b449fbfcb0fd855c0e13011b6a"
    end
  end

  def install
    bin.install "loadout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loadout --version")
  end
end
