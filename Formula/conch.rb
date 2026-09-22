class Conch < Formula
  desc "Conch Shell"
  homepage "https://github.com/prymul/conch"
  url "https://github.com/prymul/conch/archive/refs/tags/0.2.0.tar.gz"
  sha256 "923bd797c6ebc2c04458c4ff35846c3ed00bdf4e0ee79d5b199493c87f16ab07"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"conch"
  end
end
