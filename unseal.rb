# Copyright (c) 2017 Lee Briggs
#
# This software is released under the MIT License.
#
# http://opensource.org/licenses/mit-license.php
#
class Unseal < Formula
  desc "Unseal multiple vault servers quickly and easily"
  homepage "https://github.com/jaxxstorm/unseal"
  version "v0.3.3-d7c2002"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jaxxstorm/unseal/releases/download/vv0.3.3-d7c2002/unseal_v0.3.3-d7c2002_darwin_amd64.zip"
    sha256 "f122cee6d2e52d94762b7bca7366a0e052090b7a6aeaffd952ceb34e8f79665b"
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
