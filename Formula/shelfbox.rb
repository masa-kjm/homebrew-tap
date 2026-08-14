class Shelfbox < Formula
  desc "Keep local files visible in your editor but invisible to Git"
  homepage "https://github.com/masa-kjm/shelfbox"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/masa-kjm/shelfbox/releases/download/v0.9.2/shelfbox-v0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "4f0d8d8dd02e8ae85f5dce0cedebdcb56606fc248afd4c105ddd3593b77308f1"
    end

    on_intel do
      url "https://github.com/masa-kjm/shelfbox/releases/download/v0.9.2/shelfbox-v0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "a956888ebb33aaf27f1d96286ec47b6db383892a2f47deb7209289e9a34cb536"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/masa-kjm/shelfbox/releases/download/v0.9.2/shelfbox-v0.9.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "72e51c3cb999b883e75b18712f817eb3044b2ac4c91b7deaa6c118e4aa6e1d2e"
    end

    on_intel do
      url "https://github.com/masa-kjm/shelfbox/releases/download/v0.9.2/shelfbox-v0.9.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "01b32cf6a97c8c03e4f4543d960cc1bb9d467bfc981e5cb0a3580c82674a1da7"
    end
  end

  def install
    bin.install "shelfbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shelfbox --version")
  end
end
