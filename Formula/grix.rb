class Grix < Formula
  desc "grep with an index: trigram-indexed code search that answers in milliseconds"
  homepage "https://github.com/kyo5uke/grix"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kyo5uke/grix/releases/download/v0.2.0/grix-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "c1560c5476a26db7ef74f374983db0d7e9346001f47eb1cf215133c5d8d146ed"
    end
    on_intel do
      url "https://github.com/kyo5uke/grix/releases/download/v0.2.0/grix-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "c5926203c329d142e5be6e1e8235b0b86987e1d52cec0cd217f9ab7309301d65"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kyo5uke/grix/releases/download/v0.2.0/grix-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a663ffe3d47d001bf902c404477dfcfcb8c86a4c993bea896523aa64ab14429a"
    end
  end

  def install
    bin.install "grix"
  end

  test do
    assert_match "grix", shell_output("#{bin}/grix --version")
  end
end
