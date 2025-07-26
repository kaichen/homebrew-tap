class Claco < Formula
  desc "CLI tool for boosting Claude Code productivity - manage hooks, slash commands, and inspect session history"
  homepage "https://github.com/kaichen/claco"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kaichen/claco/releases/download/v1.0.1/claco-v1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "b01f16f919a032ddde84d07035b3f970c0a18e731b3e182dd8c42c3c3346c1b6"
    else
      url "https://github.com/kaichen/claco/releases/download/v1.0.1/claco-v1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "4602c0e8445d095f1fa8b37c27ad1b346ce98e44e83be5ffdda8736518040090"
    end
  end

  on_linux do
    url "https://github.com/kaichen/claco/releases/download/v1.0.1/claco-v1.0.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 :no_check
  end

  def install
    bin.install "claco"
  end

  test do
    system "#{bin}/claco", "--version"
  end
end
