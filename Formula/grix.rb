class Grix < Formula
  desc "grep with an index: trigram-indexed code search that answers in milliseconds"
  homepage "https://github.com/kyo5uke/grix"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kyo5uke/grix/releases/download/v0.3.0/grix-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "c5809737c292a268eb7c1fab5717c753a705a47bf3d1da762766aa67dbd4c33a"
    end
    on_intel do
      url "https://github.com/kyo5uke/grix/releases/download/v0.3.0/grix-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "e8ac77ade73c2235a827c65a401e1f0ee6bde9989376d582f980903f12d10eb2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kyo5uke/grix/releases/download/v0.3.0/grix-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4e2d166e51cfeca0ee23db98c968552ac6ba622fa254459fc550c9e4e0a2c040"
    end
  end

  def install
    bin.install "grix"
  end

  test do
    assert_match "grix", shell_output("#{bin}/grix --version")
  end
end
