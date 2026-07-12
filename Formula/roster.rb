class Roster < Formula
  desc "Terminal multiplexer for Claude Code"
  homepage "https://github.com/zidankazi/roster"
  url "https://github.com/zidankazi/roster/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "7eae5abe93056df5cf7cd5e6390e38918ffc38fddaee72473c1099071625cd6d"
  license "GPL-3.0-only"
  head "https://github.com/zidankazi/roster.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/roster")
  end

  test do
    assert_match "roster #{version}", shell_output("#{bin}/roster --version")
  end
end
