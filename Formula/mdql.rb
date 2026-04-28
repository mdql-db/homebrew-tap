class Mdql < Formula
  desc "A database where every entry is a markdown file"
  homepage "https://github.com/mdql-db/mdql"
  url "https://github.com/mdql-db/mdql/archive/refs/tags/v0.5.13.tar.gz"
  sha256 "d51d7707cd198661b72a01abef6ac8604c3ce6a8d25af7d83842cf7151220215"
  license "AGPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/mdql")
  end

  test do
    assert_match "mdql", shell_output("#{bin}/mdql --help")
  end
end
