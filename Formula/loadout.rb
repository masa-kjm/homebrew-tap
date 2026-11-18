class Loadout < Formula
  desc "Local environment manager built around explicit desired state"
  homepage "https://github.com/masa-kjm/loadout"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/masa-kjm/loadout/releases/download/v0.8.3/loadout-v0.8.3-aarch64-apple-darwin.tar.gz"
      sha256 "17f55ecea21374ac507e575d64bbd534ea5b5e9ad8f7f0f9054d39c172065a3d"
    end

    on_intel do
      url "https://github.com/masa-kjm/loadout/releases/download/v0.8.3/loadout-v0.8.3-x86_64-apple-darwin.tar.gz"
      sha256 "11fb6e6e95b42ff2c231b6dc57a00327df383270dca7d5d0f306c71543c2d59a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/masa-kjm/loadout/releases/download/v0.8.3/loadout-v0.8.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a58ead7c08188bd2dbfde678457cf7b55b0186d95563cf7128c5ac2bb527095"
    end

    on_intel do
      url "https://github.com/masa-kjm/loadout/releases/download/v0.8.3/loadout-v0.8.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2065c66f44f2ec26cc76c9552cb38c657c96544bef45f407c8bcd23a8b800ecd"
    end
  end

  def install
    bin.install "loadout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loadout --version")
  end
end
