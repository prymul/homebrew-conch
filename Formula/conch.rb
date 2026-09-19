class Conch < Formula
  desc "Conch Shell"
  homepage "https://github.com/prymul/conch"
  url "https://github.com/prymul/conch/archive/refs/tags/0.1.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"conch"
  end
end