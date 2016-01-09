class Dinghy < Formula
  desc "faster, friendlier Docker on OS X"
  homepage "https://github.com/codekitchen/dinghy"
  url "https://github.com/codekitchen/dinghy.git", :tag => "v4.1.0", :revision => "f0873d48e432cc061d7feab4068c9c00066e883b"
  head "https://github.com/codekitchen/dinghy.git",

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
    system "#{bin}/dinghy", "version"
  end
end
