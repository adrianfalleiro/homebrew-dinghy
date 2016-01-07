class Dinghy < Formula
  homepage 'https://github.com/codekitchen/dinghy'
  url  'https://github.com/codekitchen/dinghy/archive/v4.1.0.tar.gz'
  sha256 'da495a2d6af2e1078bad56a182da1ad5e850bf61'
  version '4.1.0'

  depends_on 'unfs3'
  depends_on 'dnsmasq'

  def install
    bin.install "bin/dinghy"
    bin.install "bin/_dinghy_command"
    prefix.install "cli"
  end

  def caveats; <<-EOS.undent
    Run `dinghy create` to create the VM, then `dinghy up` to bring up the VM and services.
    EOS
  end
end
