class Pi < Formula
    version '1.0.0'
    homepage 'https://github.com/a-know/pi'
    url "https://github.com/a-know/pi/releases/download/v1.0.0/pi_v1.0.0_darwin_amd64.zip"
    sha256 'c4df8ed1afda04dcb9a58a6f7a278a12ac92b3ec921aa1fd31039799b369f2c2'
    head 'https://github.com/a-know/pi.git'
  
    def install
      bin.install 'pi'
    end
end
