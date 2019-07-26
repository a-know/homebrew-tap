class Pi < Formula
    version '1.1.0'
    homepage 'https://github.com/a-know/pi'
    url "https://github.com/a-know/pi/releases/download/v1.1.0/pi_v1.1.0_darwin_amd64.zip"
    sha256 '29dc34fddf6d65387899363df9575c1eed9110359d950d6512bb100008defe30'
    head 'https://github.com/a-know/pi.git'
  
    def install
      bin.install 'pi'
    end
end
