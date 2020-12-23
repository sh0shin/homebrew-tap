# macosetup homebrew formula
class Macosetup < Formula
  desc "Bash script based macOS setup environment"
  homepage "https://sh0shin.org/macosetup"
  # macosetup using github tags
  #url "https://github.com/sh0shin/macosetup/archive/v0.0.1.tar.gz"
  #sha256 ""
  license "BSD-3-Clause"
  head "https://github.com/sh0shin/macosetup.git", branch: "devel"

  bottle :unneeded

  def install
    bin.install "macosetup"
    pkgetc.install "config.d"
    pkgetc.install "file.d"
    pkgetc.install "local.d"
    pkgshare.install "applications"
    pkgshare.install "homebrew"
    pkgshare.install "misc"
    pkgshare.install "shell"
    pkgshare.install "system_preferences"
  end

  test do
    system "#{bin}/macosetup", "-h"
  end
end
