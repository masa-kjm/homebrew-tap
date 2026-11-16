class Loadout < Formula
  desc "Local environment manager built around explicit desired state"
  homepage "https://github.com/masa-kjm/loadout"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/masa-kjm/loadout/releases/download/v0.8.1/loadout-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "e88abc5772856e095f668931077d7c622b36ca9e0eff7fa58ac789805c043c5f"
    end

    on_intel do
      url "https://github.com/masa-kjm/loadout/releases/download/v0.8.1/loadout-v0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "b392ad74bb4d5890a8ae516c58694632e1f94be26cb131a09c87b4720e4aed3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/masa-kjm/loadout/releases/download/v0.8.1/loadout-v0.8.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "380a6f8176462c808099788b00531e7cf1ee123b5c7b9e68f762c0a2c146d8e1"
    end

    on_intel do
      url "https://github.com/masa-kjm/loadout/releases/download/v0.8.1/loadout-v0.8.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d1d1cbb918f58c96105b4ba73143393a8f4099ec566a7f9da975adfecaaadb1"
    end
  end

  def install
    bin.install "loadout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loadout --version")
  end
end
