class Mdql < Formula
  desc "A database where every entry is a markdown file"
  homepage "https://github.com/mdql-db/mdql"
  url "https://github.com/mdql-db/mdql/archive/refs/tags/v0.5.25.tar.gz"
  sha256 "cba975e10adc23b3e202fd595d6576ba6240d77d4a15f6df684ae2d79d70d7ab"
  license "AGPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/mdql")
  end

  test do
    assert_match "mdql", shell_output("#{bin}/mdql --help")
  end
end
