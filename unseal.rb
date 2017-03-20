# Copyright (c) 2017 Lee Briggs
#
# This software is released under the MIT License.
#
# http://opensource.org/licenses/mit-license.php
#
class Unseal < Formula
  desc "Unseal multiple vault servers quickly and easily"
  homepage "https://github.com/jaxxstorm/unseal"
  version "v0.3.2"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jaxxstorm/unseal/releases/download/v0.3.2/unseal_0.3.2_darwin_amd64.zip"
    sha256 "fdf91986ec970d8c2809e2a746bcbb836b4101ab308a14f16666e14521575dc1"
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
