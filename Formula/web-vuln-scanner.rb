class WebVulnScanner < Formula
  desc "Defensive website security, OpenAPI, secret leak & TLS configuration scanner"
  homepage "https://websecaudit.github.io/website-vulnerability-scanner/"
  version "0.2.0"
  license "MIT"

  on_macos do
    url "https://github.com/websecaudit/website-vulnerability-scanner/releases/download/v0.2.0/web-vuln-scanner-macos-universal.tar.gz"
    sha256 "79fed8f5ffcf02335056de6fe50a483924cfa04d5918e41dd3592ab34de1cda0"
  end

  on_linux do
    url "https://github.com/websecaudit/website-vulnerability-scanner/releases/download/v0.2.0/web-vuln-scanner-linux-x64.tar.gz"
    sha256 "c260462087802c00482c5d21d46b2fa5544f127bfebaeedde48da86f0b332940"
  end

  def install
    bin.install "web-vuln-scanner"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/web-vuln-scanner --version")
  end
end
