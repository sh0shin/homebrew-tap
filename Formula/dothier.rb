# dothier homebrew formula
class Dothier < Formula
  desc "Dotfiles management with dothier"
  homepage "https://sh0shin.org/dothier"
  # dothier using github tags
  url "https://github.com/sh0shin/dothier/archive/v0.1.0-beta.2.tar.gz"
  sha256 "ef31b0abc581a5b442bec5e319abe42a7ddaacbf9ac0ddc45df916401fd1a432"
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
