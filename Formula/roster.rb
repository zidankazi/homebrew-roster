class Roster < Formula
  desc "Terminal multiplexer for Claude Code"
  homepage "https://github.com/zidankazi/roster"
  url "https://github.com/zidankazi/roster/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "6409c6ad87069d76b9f83fd7e62f973922069ecf775ecbec7fe8846115354826"
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
