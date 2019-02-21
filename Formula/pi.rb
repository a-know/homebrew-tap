class Pi < Formula
    version '0.1.0'
    homepage 'https://github.com/a-know/pi'
    url "https://github.com/a-know/pi/releases/download/v0.1.0/pi_v0.1.0_darwin_amd64.zip"
    sha256 'cbc3be26ebad972cc2e3d50e088a5c1e10f1cb7ebe4d3079a52fce892241ab45'
    head 'https://github.com/a-know/pi.git'
  
    def install
      bin.install 'pi'
    end
end
