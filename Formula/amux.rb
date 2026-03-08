class Amux < Formula
  desc "Manage parallel AI agent workspaces with git"
  homepage "https://github.com/brianaffirm/amux"
  url "https://github.com/brianaffirm/amux/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "15bfef0f45b701b556ad071cc1b94a52da4a88adf01eb211c1dad4650f8f4a96"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/amux/"
  end

  test do
    assert_match "amux", shell_output("#{bin}/amux --help")
  end
end
