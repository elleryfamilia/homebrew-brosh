class BroshCli < Formula
  desc "AI-native terminal CLI with built-in MCP server"
  homepage "https://github.com/elleryfamilia/brosh"
  url "https://registry.npmjs.org/brosh/-/brosh-0.2.2.tgz"
  # sha256 will be updated after npm publish completes
  sha256 ""
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
