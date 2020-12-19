# dothier homebrew formula
class Dothier < Formula
  desc "Dotfiles management with dothier"
  homepage "https://github.com/sh0shin/dothier"
  # dothier using github tags
  url "https://github.com/sh0shin/dothier/archive/0.0.3.tar.gz"
  sha256 "a3df6b1353dbb6356d77d969e5cf907833346d5693187a94b4ae8fa107641fb5"
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
