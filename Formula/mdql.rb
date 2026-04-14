class Mdql < Formula
  desc "A database where every entry is a markdown file"
  homepage "https://github.com/mdql-db/mdql"
  url "https://github.com/mdql-db/mdql/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "1ff2bfebe0646a714fb0b6090357b4da0d71f9842b0dcbcc040e107cc3df9623"
  license "AGPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/mdql")
  end

  test do
    assert_match "mdql", shell_output("#{bin}/mdql --help")
  end
end
