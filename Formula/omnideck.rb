class Omnideck < Formula
  desc "CLI tool for managing the Omnideck local agent harness"
  homepage "https://github.com/omnideck-dev/cli"
  version "0.5.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.5.2/omnideck-darwin-amd64.tar.gz"
      sha256 "07b7088008ef849bde0f38a0f031d0252d25eba03f5e88c09a99bedebfe06728"
    end

    on_arm do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.5.2/omnideck-darwin-arm64.tar.gz"
      sha256 "c93e4f1751b8201157ab706a9548ef2d281cd886db5cbc212c0abfae9d9d7af8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.5.2/omnideck-linux-amd64.tar.gz"
      sha256 "e550a2fa9ceea31143bae28d49e10e792cbdc4a70269c49d1d4ecdd512ed30d9"
    end

    on_arm do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.5.2/omnideck-linux-arm64.tar.gz"
      sha256 "63d2057be1ca55a18e072df35ba78f30bd2f9d8ed281381ed70df55a2a00032d"
    end
  end

  def install
    bin.install "omnideck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omnideck --version")
  end
end
