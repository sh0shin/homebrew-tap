# dothier homebrew formula
class Dothier < Formula
  desc "Dotfiles management with dothier"
  homepage "https://sh0shin.org/dothier"
  # dothier using github tags
  url "https://github.com/sh0shin/dothier/archive/v0.2.9.tar.gz"
  sha256 "bbd4c63cd5f3d0620135584c43e6fc9ff400dda009ed8056b1dbe691bd307840"
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
