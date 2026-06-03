class Mdql < Formula
  desc "A strict Markdown database with SQL-like queries"
  homepage "https://github.com/mdql-db/mdql"
  url "https://github.com/mdql-db/mdql/archive/refs/tags/v0.5.32.tar.gz"
  sha256 "774fb66ea39ca80c248b3df2ecb921543c686992d4862b3f8f03ee32bc6e6dd0"
  license "AGPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", "crates/mdql", "--root", prefix
  end

  test do
    system "#{bin}/mdql", "--version"
  end
end
