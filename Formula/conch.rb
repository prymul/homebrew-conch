class Conch < Formula
  desc "Conch Shell"
  homepage "https://github.com/prymul/conch"
  url "https://github.com/prymul/conch/archive/refs/tags/0.3.0.tar.gz"
  sha256 "683706feafb8c208786d069a3837c1212d0406ecc1631cf37f5ef752aaeb636f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/conch")
  end

  test do
    system bin/"conch"
  end
end
