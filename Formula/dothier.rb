# dothier homebrew formula
class Dothier < Formula
  desc "Dotfiles management with dothier"
  homepage "https://github.com/sh0shin/dothier"
  # dothier using github tags
  url "https://github.com/sh0shin/dothier/archive/0.0.2.tar.gz"
  sha256 "9041276872b87c02f778c2bf87636c012d0df7b186be9b7e1fc7d98533360528"
  license "BSD-3-Clause"
  head "https://github.com/sh0shin/dothier.git"

  bottle :unneeded

  def install
    bin.install "dothier"
    #bin.install "dotinit"
  end

  test do
    system "#{bin}/dothier", "-h"
    #system "#{bin}/dotinit", "-h"
  end
end
