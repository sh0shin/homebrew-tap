# dothier homebrew formula
class Dothier < Formula
  desc "Dotfiles management with dothier"
  homepage "https://sh0shin.org/dothier"
  # dothier using github tags
  url "https://github.com/sh0shin/dothier/archive/v0.2.2.tar.gz"
  sha256 "971f529244f84a8b78fd8c5bd21a023aca849346a5cbb2e23321e826aab648bc"
  license "BSD-3-Clause"
  head "https://github.com/sh0shin/dothier.git"
  revision 1

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
