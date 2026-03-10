class Towr < Formula
  desc "Development control plane for parallel work"
  homepage "https://github.com/brianaffirm/towr"
  url "https://github.com/brianaffirm/towr/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "98f961e3b0336790da98696e2ec688f32c10fef416ac6312b4590e761e41cca7"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/towr/"
  end

  test do
    assert_match "towr", shell_output("#{bin}/towr --help")
  end
end
