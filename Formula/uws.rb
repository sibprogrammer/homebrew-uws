class Uws < Formula
  desc "Universal Web Server for development purposes"
  homepage "https://github.com/sibprogrammer/uws"
  version "0.0.4"

  on_macos do
    on_arm do
      url "https://github.com/sibprogrammer/uws/releases/download/v0.0.4/uws_0.0.4_darwin_arm64.tar.gz"
      sha256 "963e223de12e8d1132d0312da631a02e7c4230c0c057b04ceb8a6c7f7d5af075"
    end
    on_intel do
      url "https://github.com/sibprogrammer/uws/releases/download/v0.0.4/uws_0.0.4_darwin_amd64.tar.gz"
      sha256 "9553c57e5573d5e7c45610db7003e9d0e0d307f7d8f9945607bbebddbe32d30e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sibprogrammer/uws/releases/download/v0.0.4/uws_0.0.4_linux_amd64.tar.gz"
      sha256 "72673e60cd9e6ba7b4312c300b0ed4670281e298581fde3404d37e3e05f35203"
    end
    on_arm do
      url "https://github.com/sibprogrammer/uws/releases/download/v0.0.4/uws_0.0.4_linux_arm64.tar.gz"
      sha256 "ef83a4dff937c988940fbcb4cf90c22466f4eced7271e750500eba2da1f85986"
    end
  end

  def install
    bin.install "uws"
  end

  test do
    system "#{bin}/uws", "--version"
  end
end
