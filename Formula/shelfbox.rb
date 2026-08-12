class Shelfbox < Formula
  desc "Keep AI context files visible in your editor but invisible to Git"
  homepage "https://github.com/masa-kjm/shelfbox"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/masa-kjm/shelfbox/releases/download/v0.9.1/shelfbox-v0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "8830b471542b41d971db5fa287c444c321ad6a2e33f5f616028b446d49e72228"
    end

    on_intel do
      url "https://github.com/masa-kjm/shelfbox/releases/download/v0.9.1/shelfbox-v0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "e46a7466748d2ac16d8b4ac3edc9c1ccaec7a900f888eb3ed076a020b1b1aace"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/masa-kjm/shelfbox/releases/download/v0.9.1/shelfbox-v0.9.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "896b41863e858b5ef1173f700e9b979db3660e9f9cf871c315d7f65e0e50ffbf"
    end

    on_intel do
      url "https://github.com/masa-kjm/shelfbox/releases/download/v0.9.1/shelfbox-v0.9.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ee48e2a76a6afe7dbdda597a047ea4f08f5068cc0572ef5e403624f4e1e4f4eb"
    end
  end

  def install
    bin.install "shelfbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shelfbox --version")
  end
end
