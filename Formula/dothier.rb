# dothier homebrew formula
class Dothier < Formula
  desc "Dotfiles management with dothier"
  homepage "https://github.com/sh0shin/dothier"
  # dothier using github tags
  url "https://github.com/sh0shin/dothier/archive/0.0.4.tar.gz"
  sha256 "a03a0c9fba05ac037442714fa5c28efbb605aa0503191d57da84048c133c39f0"
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
