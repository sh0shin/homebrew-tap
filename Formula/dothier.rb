# dothier homebrew formula
class Dothier < Formula
  desc "Dotfiles management with dothier"
  homepage "https://github.com/sh0shin/dothier"
  # dothier using github tags
  url "https://github.com/sh0shin/dothier/archive/0.0.1.tar.gz"
  sha256 "20a858cb2acc949c79c768efb7cb6c2347b73e0bc04b20b60a9dde1190c94528"
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
