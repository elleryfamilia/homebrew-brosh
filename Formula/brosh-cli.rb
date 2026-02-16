class BroshCli < Formula
  desc "AI-native terminal CLI with built-in MCP server"
  homepage "https://github.com/elleryfamilia/brosh"
  url "https://registry.npmjs.org/brosh/-/brosh-0.1.0.tgz"
  sha256 "8cecbeef8163578f887cf02cf5bca3c62b4fba9a97b0ddaec17f788fcab91b59"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "brosh", shell_output("#{bin}/brosh --help")
  end
end
