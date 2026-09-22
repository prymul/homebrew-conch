class Conch < Formula
  desc "Conch Shell"
  homepage "https://github.com/prymul/conch"
  url "https://github.com/prymul/conch/archive/refs/tags/0.1.2.tar.gz"
  sha256 "69d1ad21aaebf3ef528ef7fb29e35f57c4e5f464e1a6a19f4d14bfdc896cdc65"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"conch"
  end
end
