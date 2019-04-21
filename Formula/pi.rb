class Pi < Formula
    version '1.0.2'
    homepage 'https://github.com/a-know/pi'
    url "https://github.com/a-know/pi/releases/download/v1.0.2/pi_v1.0.2_darwin_amd64.zip"
    sha256 'dd2692811f1a8121dbd4e441bab401d3c1058691d6d783c4da3d8786055237a5'
    head 'https://github.com/a-know/pi.git'
  
    def install
      bin.install 'pi'
    end
end
