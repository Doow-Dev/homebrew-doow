class Doow < Formula
  include Language::Node

  desc "Doow CLI - manage SaaS spend from your terminal"
  homepage "https://doow.com"
  url "https://registry.npmjs.org/@doow/cli/-/cli-0.1.14.tgz"
  version "0.1.14"
  sha256 "291384cb906116a656ef0f15d4af6e50eeeb6763f039e96c20a83358c4f19a02"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "doow", shell_output("#{bin}/doow --version")
  end
end
