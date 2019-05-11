class Pi < Formula
    version '1.0.3'
    homepage 'https://github.com/a-know/pi'
    url "https://github.com/a-know/pi/releases/download/v1.0.3/pi_v1.0.3_darwin_amd64.zip"
    sha256 '33e8b3b982808cc370fd3023f68bbec9981d1b903249dbdc0d307f6cddb17c5d'
    head 'https://github.com/a-know/pi.git'
  
    def install
      bin.install 'pi'
    end
end
