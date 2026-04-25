class Mdql < Formula
  desc "A database where every entry is a markdown file"
  homepage "https://github.com/mdql-db/mdql"
  url "https://github.com/mdql-db/mdql/archive/refs/tags/v0.5.10.tar.gz"
  sha256 "7a9eaf18f01b2d4801b6b63bc2c89a40c9097b4e8ce7cd74dc791a70d34225f6"
  license "AGPL-3.0-only"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/mdql")
  end

  test do
    assert_match "mdql", shell_output("#{bin}/mdql --help")
  end
end
