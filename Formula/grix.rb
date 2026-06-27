class Grix < Formula
  desc "grep with an index: trigram-indexed code search that answers in milliseconds"
  homepage "https://github.com/kyo5uke/grix"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kyo5uke/grix/releases/download/v0.3.2/grix-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "926b20358c08d3ba8d5ab79b7e8140bd30130c0fa12ed17b19a4876886372198"
    end
    on_intel do
      url "https://github.com/kyo5uke/grix/releases/download/v0.3.2/grix-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "fc84af3ab7dc46db84baa3b0742868b83fc0d37bae9b8144376fb8078f08807e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kyo5uke/grix/releases/download/v0.3.2/grix-v0.3.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2de665c0b559591d2c5561e9b3bdc97d46fcecb77762e1d3a3deb0e57a0c4a06"
    end
  end

  def install
    bin.install "grix"
  end

  test do
    assert_match "grix", shell_output("#{bin}/grix --version")
  end
end
