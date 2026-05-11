class Doow < Formula
  include Language::Node

  desc "Doow CLI - manage SaaS spend from your terminal"
  homepage "https://doow.com"
  url "https://registry.npmjs.org/@doow/cli/-/cli-0.1.11.tgz"
  version "0.1.11"
  sha256 "a52397e61638801e2abaed257229e14a19ea39624081d10d0a506f5322c007d6"
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
