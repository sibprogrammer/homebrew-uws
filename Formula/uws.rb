class Uws < Formula
  desc "Universal Web Server for development purposes"
  homepage "https://github.com/sibprogrammer/uws"
  version "0.0.3"

  on_macos do
    on_arm do
      url "https://github.com/sibprogrammer/uws/releases/download/v0.0.3/uws_0.0.3_darwin_arm64.tar.gz"
      sha256 "sha256:0e22642a7bb2c83b02fb3bbf0eae14bb0b9126f939c2bcb5b4399b3b5c4b27ed"
    end
    on_intel do
      url "https://github.com/sibprogrammer/uws/releases/download/v0.0.3/uws_0.0.3_darwin_amd64.tar.gz"
      sha256 "sha256:fd804edf50b5d5417180aaabb30a22d3d9a3e69cdb9a345bdfd871c6d3d040bf"
    end
  end

  on_linux do
    url "https://github.com/sibprogrammer/uws/releases/download/v0.0.3/uws_0.0.3_linux_amd64.tar.gz"
    sha256 "sha256:eb9f438547d1bd01f1db2a1e2fead57f15ef817d810d90eb9990b0b7b0b0d6bd"
  end

  def install
    bin.install "uws"
  end

  test do
    system "#{bin}/uws", "--version"
  end
end
