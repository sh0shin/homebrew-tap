# dothier homebrew formula
class Dothier < Formula
  desc "Dotfiles management with dothier"
  homepage "https://sh0shin.org/dothier"
  # dothier using github tags
  url "https://github.com/sh0shin/dothier/archive/v0.2.3.tar.gz"
  sha256 "45201a3106d043cde392523ad56681485c93ead811723ba70619aa0bcbb535cb"
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
