class Kubesecrets < Formula
  desc "Decode all parts of a kubernetes secret, no more copypasting!"
  homepage "https://github.com/stephenwolfe1/kubesecrets"
  url "https://github.com/stephenwolfe1/kubesecrets/archive/v1.6.tar.gz"
  sha256 "fbdb3ff0c4214013baa4123c993880cab5ed2c8eef3b0f215454b8c0ea63f0c0"

  depends_on "jq"

  def install
    system "make", "install", "PREFIX=#{prefix}"
    bin.install_symlink "#{prefix}/kubedecode"
    bin.install_symlink "#{prefix}/kubeencode"
  end
end
