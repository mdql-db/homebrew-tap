class Mdql < Formula
  desc "A strict Markdown database with SQL-like queries"
  homepage "https://github.com/mdql-db/mdql"
  url "https://github.com/mdql-db/mdql/archive/refs/tags/v0.5.30.tar.gz"
  sha256 "e9d105bbbcfbcafdeace1c62c25113cadfe81d974cd3d548f235b85b40fa9c40"
  license "AGPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", "crates/mdql", "--root", prefix
  end

  test do
    system "#{bin}/mdql", "--version"
  end
end
