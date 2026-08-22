class Shelfbox < Formula
  desc "Keep local files visible in your editor but invisible to Git"
  homepage "https://github.com/masa-kjm/shelfbox"
  version "0.9.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/masa-kjm/shelfbox/releases/download/v0.9.3/shelfbox-v0.9.3-aarch64-apple-darwin.tar.gz"
      sha256 "25e226c2faa9f1b6bfc9fa7405e7690425144ee8839a5c74d4580080b6d300e6"
    end

    on_intel do
      url "https://github.com/masa-kjm/shelfbox/releases/download/v0.9.3/shelfbox-v0.9.3-x86_64-apple-darwin.tar.gz"
      sha256 "22eb0ba7d092f5fa514ab96d93e00c0ce512f452b0c0ceb643956f7802c2c5c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/masa-kjm/shelfbox/releases/download/v0.9.3/shelfbox-v0.9.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c75cb15bcca2f64d77ffc2885c1c0b0cecbeb7f72c5959e95fd2e41fd2df67e"
    end

    on_intel do
      url "https://github.com/masa-kjm/shelfbox/releases/download/v0.9.3/shelfbox-v0.9.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8793d35677b45115d4d37c29ec8a34d09e7310e119a3050c3366b37c65dc567b"
    end
  end

  def install
    bin.install "shelfbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shelfbox --version")
  end
end
