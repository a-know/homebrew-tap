class Pi < Formula
    version '1.0.1'
    homepage 'https://github.com/a-know/pi'
    url "https://github.com/a-know/pi/releases/download/v1.0.1/pi_v1.0.1_darwin_amd64.zip"
    sha256 '3b1ef740e6ebc5c203ced6f051d4cb96efd656c35b39ff6ff87416c9e1fa5996'
    head 'https://github.com/a-know/pi.git'
  
    def install
      bin.install 'pi'
    end
end
