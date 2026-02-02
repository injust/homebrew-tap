class Zmx < Formula
  desc "Session persistence for terminal processes"
  homepage "https://github.com/neurosnap/zmx"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://zmx.sh/a/zmx-0.3.0-macos-aarch64.tar.gz"
      sha256 "ca3819bdbe3b340fd71bebbb505a5293d823cce22a9986b4a880a12d15fd9bf9"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.3.0-macos-x86_64.tar.gz"
      sha256 "ca9627bafe1c3786d3d7436ab58b56c76954f3e1a0c3ca516b5afadd0e659836"
    end
  end

  on_linux do
    on_arm do
      url "https://zmx.sh/a/zmx-0.3.0-linux-aarch64.tar.gz"
      sha256 "393316cc6cce8cf64676be218f74d336a6c6d8e71173421f77440b680a1194b4"
    end
    on_intel do
      url "https://zmx.sh/a/zmx-0.3.0-linux-x86_64.tar.gz"
      sha256 "fcaff1581eb5a6a3e59781aad77a8ca069b4435bc2fec413dd323b45a4dfdf32"
    end
  end

  def install
    bin.install "zmx"
  end

  test do
    assert_match "Usage: zmx", shell_output("#{bin}/zmx help")
  end
end
