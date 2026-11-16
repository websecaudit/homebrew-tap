class WebVulnScanner < Formula
  desc "Defensive website security, OpenAPI, secret leak & TLS configuration scanner"
  homepage "https://websecaudit.github.io/website-vulnerability-scanner/"
  version "0.2.1"
  license "MIT"

  on_macos do
    url "https://github.com/websecaudit/website-vulnerability-scanner/releases/download/v0.2.1/web-vuln-scanner-macos-universal.tar.gz"
    sha256 "623b6439a9c90645c5a7c042bf5675bfb37f9cd68be50fdb9a0cf1e907a27f5d"
  end

  on_linux do
    url "https://github.com/websecaudit/website-vulnerability-scanner/releases/download/v0.2.1/web-vuln-scanner-linux-x64.tar.gz"
    sha256 "9a11f32f6e3d5bbcb2e8c6935863629aae187ceeaeb2ee8d8f49b8f891a18ab6"
  end

  def install
    bin.install "web-vuln-scanner"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/web-vuln-scanner --version")
  end
end
