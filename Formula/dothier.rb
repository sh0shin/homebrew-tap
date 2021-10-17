# dothier homebrew formula
class Dothier < Formula
  desc "Dotfiles management with dothier"
  homepage "https://sh0shin.org/dothier"
  # dothier using github tags
  url "https://github.com/sh0shin/dothier/archive/v0.2.8.tar.gz"
  sha256 "4855b3888e3859e0164c4961bd1065fa458bc74dc49fa4c4d12bee6de052cca9"
  license "BSD-3-Clause"
  head "https://github.com/sh0shin/dothier.git"
  revision 0

  bottle :unneeded

  def install
    bin.install "dothier"
    pkgshare.install "README.md"
    pkgshare.install "dothier.config-sample"
    pkgshare.install "hier.sample"
    pkgshare.install "hiergit.sample"
  end

  test do
    system "#{bin}/dothier", "-h"
  end
end
