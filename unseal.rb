# Copyright (c) 2017 Lee Briggs
#
# This software is released under the MIT License.
#
# http://opensource.org/licenses/mit-license.php
#
class Unseal < Formula
  desc "Unseal multiple vault servers quickly and easily"
  homepage "https://github.com/jaxxstorm/unseal"
  version "v0.3.1"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jaxxstorm/unseal/releases/download/v0.3.1/unseal_0.3.1_darwin_amd64.zip"
    sha256 "f9e50a7b9b25e5e7cccc9e7b8033d9f9e5039f81d5b303177304daf1d99674ec"
  #else
  #  url "https://github.com/jaxxstorm/unseal/releases/download/v0.3-beta/unseal-v0.3-beta_darwin_amd64"
  #  sha256 ""
  end

  def install
    # install
    bin.install "unseal"
  end

  test do
    system "unseal version"
  end

end
