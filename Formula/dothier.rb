# dothier homebrew formula
class Dothier < Formula
  desc "Dotfiles management with dothier"
  homepage "https://sh0shin.org/dothier"
  # dothier using github tags
  url "https://github.com/sh0shin/dothier/archive/v0.2.7.tar.gz"
  sha256 "a1e5e7a91306e40d3df50a44cd9ad3f9ccad2537c3b4d8f65670b0a7dce8ae3f"
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
