class Conch < Formula
  desc "Conch Shell"
  homepage "https://github.com/prymul/conch"
  url "https://github.com/prymul/conch/archive/refs/tags/0.3.1.tar.gz"
  sha256 "1ae8210684e8965a13f71c9862668d046791e491fd7f0e49bfafbfc90d72ae54"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/conch")
  end

  test do
    system bin/"conch", "-c", "exit 0"
  end
end
