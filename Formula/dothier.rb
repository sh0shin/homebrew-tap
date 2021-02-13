# dothier homebrew formula
class Dothier < Formula
  desc "Dotfiles management with dothier"
  homepage "https://sh0shin.org/dothier"
  # dothier using github tags
  url "https://github.com/sh0shin/dothier/archive/v0.2.0.tar.gz"
  sha256 "2808465f34dfd72ba687b1eabbb9df1b5d0418b51a02151d34c6898c01b6230a"
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
