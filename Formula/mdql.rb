class Mdql < Formula
  desc "A database where every entry is a markdown file"
  homepage "https://github.com/mdql-db/mdql"
  url "https://github.com/mdql-db/mdql/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "0975584a376254c5bb5b7cd9b2e49fd6b87e50eed296bb829e4098a428b1eb65"
  license "AGPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/mdql")
  end

  test do
    assert_match "mdql", shell_output("#{bin}/mdql --help")
  end
end
