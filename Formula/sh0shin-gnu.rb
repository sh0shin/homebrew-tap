require "digest"

class Sh0shinGnu < Formula
  desc "My GNU requirements"
  homepage "https://sh0shin.org/"
  url 'file://'+File.expand_path(__FILE__)
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  license "BSD-3-Clause"
  version "1"
  revision 0

  depends_on "gnu-sed"
  depends_on "gnu-tar"
  depends_on "grep"

  keg_only "it's used to install my GNU requirements only"

  def install
    bin.install_symlink libexec/"sh0shin-gnu"
  end
end
