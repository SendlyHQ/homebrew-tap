# Homebrew formula for Sendly CLI
# To install: brew install sendly-live/tap/sendly

class Sendly < Formula
  desc "CLI for Sendly SMS API - Send SMS from your terminal"
  homepage "https://sendly.live"
  url "https://registry.npmjs.org/@sendly/cli/-/cli-3.24.0.tgz"
  sha256 "1ea6f8ffb12b04c9f6e6649fca9f74839fd4dde3855fa6b735478bf186d05898"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(prefix: libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "sendly", shell_output("#{bin}/sendly --version")
  end
end
