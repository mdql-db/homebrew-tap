class Mdql < Formula
  desc "A strict Markdown database with SQL-like queries"
  homepage "https://github.com/mdql-db/mdql"
  url "https://github.com/mdql-db/mdql/archive/refs/tags/v0.5.27.tar.gz"
  sha256 "4ce4d51710cd9a118d8dacd465a0261aeaf4c6678e732e9b38c91c9d9f3daad2"
  license "AGPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", "crates/mdql", "--root", prefix
  end

  test do
    system "#{bin}/mdql", "--version"
  end
end
