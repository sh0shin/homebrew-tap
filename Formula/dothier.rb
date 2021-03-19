# dothier homebrew formula
class Dothier < Formula
  desc "Dotfiles management with dothier"
  homepage "https://sh0shin.org/dothier"
  # dothier using github tags
  url "https://github.com/sh0shin/dothier/archive/v0.2.4.tar.gz"
  sha256 "d3d372e1dbdb89b8e0ee6cde8891775244f7e35688ebc7966f274b9290a1e708"
  license "BSD-3-Clause"
  head "https://github.com/sh0shin/dothier.git"
  revision 0

  bottle :unneeded

  def install
    bin.install "dothier"
    pkgshare.install "README.md"
    pkgshare.install "dothier.config-sample"
    pkgshare.install "gitsrc.sample"
    pkgshare.install "hier.sample"
  end

  test do
    system "#{bin}/dothier", "-h"
  end
end
