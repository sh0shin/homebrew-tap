# dothier homebrew formula
class Dothier < Formula
  desc "Dotfiles management with dothier"
  homepage "https://github.com/sh0shin/dothier"
  # dothier using github tags
  url "https://github.com/sh0shin/dothier/archive/0.0.2.tar.gz"
  sha256 "521d393b4e08c793be2130b77d363472715a33565f593b9f9ec141a5aadd3d58"
  license "BSD-3-Clause"
  head "https://github.com/sh0shin/dothier.git"

  bottle :unneeded

  def install
    bin.install "dothier"
  end

  test do
    system "#{bin}/dothier", "-h"
  end
end
