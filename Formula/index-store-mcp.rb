class IndexStoreMcp < Formula
  desc "MCP server giving coding agents semantic code navigation for Xcode projects"
  homepage "https://github.com/hrdkp/swift-index-store-mcp"
  url "https://github.com/hrdkp/swift-index-store-mcp/releases/download/v0.1.0/index-store-mcp-0.1.0-arm64-macos.tar.gz"
  sha256 "f488858a210e3542d8c7b24a54a0bf992238fb7cf867de79708e940072797e9a"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma
  depends_on xcode: "16.0"

  def install
    bin.install "index-store-mcp"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/index-store-mcp --version").strip
  end
end
