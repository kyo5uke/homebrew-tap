class Grix < Formula
  desc "grep with an index: trigram-indexed code search that answers in milliseconds"
  homepage "https://github.com/kyo5uke/grix"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kyo5uke/grix/releases/download/v0.1.4/grix-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "646851a58e18005ae842ff5248491a1af23ebe1baac00f0fb31987c3c5be740a"
    end
    on_intel do
      url "https://github.com/kyo5uke/grix/releases/download/v0.1.4/grix-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "6f4cdc5855aee95f9687f2e6a8904d057e80f374de9c8a942e46df507d7f0c76"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kyo5uke/grix/releases/download/v0.1.4/grix-v0.1.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a39e1987f5f9366cdc5427dce9abed4612e521d309b10b4f2d9bf4e06694b2a0"
    end
  end

  def install
    bin.install "grix"
  end

  test do
    assert_match "grix", shell_output("#{bin}/grix --version")
  end
end
