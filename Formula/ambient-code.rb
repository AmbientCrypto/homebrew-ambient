class AmbientCode < Formula
  desc "Terminal coding agent for the Ambient network"
  homepage "https://github.com/AmbientCrypto/ambient-cli"
  url "https://github.com/AmbientCrypto/ambient-cli/releases/download/v1.0.3/ambient-code-1.0.3.tgz"
  sha256 "b6b09202f112f85f762da44c59a2a335b1030b33d6071f06cbd1b682bb75b416"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "ambient", shell_output("#{bin}/ambient --version")
  end
end
