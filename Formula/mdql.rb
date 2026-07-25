class Mdql < Formula
  desc "A strict Markdown database with SQL-like queries"
  homepage "https://github.com/mdql-db/mdql"
  url "https://github.com/mdql-db/mdql/archive/refs/tags/v0.5.38.tar.gz"
  sha256 "8111faf4b6154cd850d9a9c77878b2c0118a4aed6324815c39c6e3b00bb5ca05"
  license "AGPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", "crates/mdql", "--root", prefix
  end

  test do
    system "#{bin}/mdql", "--version"
  end
end
