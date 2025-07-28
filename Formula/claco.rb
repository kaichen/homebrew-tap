class Claco < Formula
  desc "CLI tool for boosting Claude Code productivity - manage agents, hooks, slash commands, and inspect session history"
  homepage "https://github.com/kaichen/claco"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kaichen/claco/releases/download/v2.0.0/claco-v2.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "b3f64c6b36057c1c80b6dd1941b42a2e3fd3696a95c1f86c4920c457670601c3"
    else
      url "https://github.com/kaichen/claco/releases/download/v2.0.0/claco-v2.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "a19a0ee767f533b352e3bf3e3dabac35dcf3e75ca5ee05a8069b9717e5613e89"
    end
  end

  on_linux do
    url "https://github.com/kaichen/claco/releases/download/v2.0.0/claco-v2.0.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 :no_check
  end

  def install
    bin.install "claco"
  end

  test do
    system "#{bin}/claco", "--version"
  end
end
