# dothier homebrew formula
class Dothier < Formula
  desc "Dotfiles management with dothier"
  homepage "https://sh0shin.org/dothier"
  # dothier using github tags
  url "https://github.com/sh0shin/dothier/archive/v0.1.3.tar.gz"
  sha256 "1875c7250a72b08c61a92c533e9d78d50b422aa5ba47bf83dec4a0ce1f52b3d6"
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
