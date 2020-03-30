class Pi < Formula
    version '1.2.0'
    homepage 'https://github.com/a-know/pi'
    url "https://github.com/a-know/pi/releases/download/v1.2.0/pi_v1.2.0_darwin_amd64.zip"
    sha256 'd683156da3ea4aae9aad8ee4db1f87e46f1700a9236c1cd8c08c559a08d35f69'
    head 'https://github.com/a-know/pi.git'
  
    def install
      bin.install 'pi'
    end
end
