class Doow < Formula
  include Language::Node

  desc "Doow CLI - manage SaaS spend from your terminal"
  homepage "https://doow.com"
  url "https://registry.npmjs.org/@doow/cli/-/cli-0.1.13.tgz"
  version "0.1.13"
  sha256 "845dc32536bcd324e31d8b414a95054b504ad89cfc7b0a4e98ce35c4addfc1bb"
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
