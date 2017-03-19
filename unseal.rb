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
    sha256 "1e6bedf993dcb50022d011af9d4fc6450e907e77715acf8ed4a83b0ae489bbe1"
  #else
  #  url "https://github.com/jaxxstorm/unseal/releases/download/v0.3-beta/unseal-v0.3-beta_darwin_amd64"
  #  sha256 ""
  end

  def install
    bin.install "unseal"
  end

  test do
    system "unseal version"
  end

end
