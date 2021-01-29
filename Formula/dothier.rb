# dothier homebrew formula
class Dothier < Formula
  desc "Dotfiles management with dothier"
  homepage "https://sh0shin.org/dothier"
  # dothier using github tags
  url "https://github.com/sh0shin/dothier/archive/v0.1.5.tar.gz"
  sha256 "5eee4ffc31983eb6d4ec4ba16832cf5153e2fab10f0ae5a96d71340816703e86"
  license "BSD-3-Clause"
  head "https://github.com/sh0shin/dothier.git"

  bottle :unneeded

  def install
    bin.install "dothier"
    pkgshare.install "README.md"
    pkgshare.install "gitsrc.sample"
    pkgshare.install "hier.sample"
  end

  test do
    system "#{bin}/dothier", "-h"
  end
end
