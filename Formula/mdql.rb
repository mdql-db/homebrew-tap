class Mdql < Formula
  desc "A strict Markdown database with SQL-like queries"
  homepage "https://github.com/mdql-db/mdql"
  url "https://github.com/mdql-db/mdql/archive/refs/tags/v0.5.35.tar.gz"
  sha256 "5a49d76097067db76f4a3c88db2bd517ee274db2a3d9eb7e196ff8130a433066"
  license "AGPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", "crates/mdql", "--root", prefix
  end

  test do
    system "#{bin}/mdql", "--version"
  end
end
