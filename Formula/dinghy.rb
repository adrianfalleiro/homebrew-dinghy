class Dinghy < Formula
  desc "faster, friendlier Docker on OS X"
  homepage "https://github.com/codekitchen/dinghy"
  url  'https://github.com/codekitchen/dinghy.git', tag: "v4.1.0"
  head 'https://github.com/codekitchen/dinghy.git', branch: :master
  sha256 "3169b7a20b0658c20215eb22af216f1a89fbcace65e4fcf66ecba4fb765892c0"

  depends_on "unfs3"
  depends_on "dnsmasq"

  def install
    bin.install "bin/dinghy"
    bin.install "bin/_dinghy_command"
    prefix.install "cli"
  end

  def caveats; <<-EOS.undent
    Run `dinghy create` to create the VM, then `dinghy up` to bring up the VM and services.
    EOS
  end

  test do
    system "#{brew --prefix}/bin/dinghy", "--version"
  end
end
