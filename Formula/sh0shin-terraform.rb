require "digest"

class Sh0shinTerraform < Formula
  desc "My Terraform requirements"
  homepage "https://sh0shin.org/"
  url 'file://'+File.expand_path(__FILE__)
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  license "BSD-3-Clause"
  version "1"
  revision 0

  depends_on "terraform-docs"
  depends_on "tflint"
  depends_on "tfsec"

  depends_on "warrensbox/tap/tfswitch"

  keg_only "it's used to install my Terraform requirements only"

  def install
    bin.install_symlink libexec/"sh0shin-terraform"
  end
end
