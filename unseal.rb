# Copyright (c) 2017 Lee Briggs
#
# This software is released under the MIT License.
#
# http://opensource.org/licenses/mit-license.php
#
class Unseal < Formula
  desc "Unseal multiple vault servers quickly and easily"
  homepage "https://github.com/jaxxstorm/unseal"
  version "v0.4.0-fb8aa52"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jaxxstorm/unseal/releases/download/vv0.4.0-fb8aa52/unseal_v0.4.0-fb8aa52_darwin_amd64.zip"
    sha256 "1a85ef32383b9152a0ac9df60970fc5597e40f83ca50a6dbc18df9a0d504b159"
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
