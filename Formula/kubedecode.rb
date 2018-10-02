class Kubedecode < Formula
  desc "Decode all parts of a kubernetes secret, no more copypasting!"
  homepage "https://github.com/stephenwolfe1/kubedecode-new"
  url "https://github.com/stephenwolfe1/kubedecode-new/archive/v1.5.tar.gz"
  sha256 "7d4dfe683c06ee28115dafb3ead51cfb210558ded8f2fd58918626c03ae481a1"

  depends_on "jq"

  def install
    system "make", "install", "PREFIX=#{prefix}"
    bin.install_symlink "#{prefix}/kubedecode"
  end
end
