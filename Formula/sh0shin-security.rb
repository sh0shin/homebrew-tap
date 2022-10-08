require "digest"

class Sh0shinSecurity < Formula
  desc "My security requirements"
  homepage "https://sh0shin.org/"
  url 'file://'+File.expand_path(__FILE__)
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  license "BSD-3-Clause"
  version "1"
  revision 1

  depends_on "gnupg"
  depends_on "pass"
  depends_on "pass-otp"

  depends_on "openssh"

  keg_only "it's used to install my security requirements only"

  def install
    bin.install_symlink libexec/"sh0shin-security"
  end
end
