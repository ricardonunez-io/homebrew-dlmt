class Dlmt < Formula
  desc "Download a site's llms.txt and all linked markdown/JSON/YAML resources"
  homepage "https://github.com/ricardonunez-io/dlmt"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.1/dlmt-macos-arm64.tar.gz"
      sha256 "5ea2674be56b1ca34cb4bfa12c8ce409cf4b2e0ff58f16db91cffd1b9e72c263"

      def install
        bin.install "dlmt-macos-arm64" => "dlmt"
        %w[download-llmstxt dl-llmstxt dl-mintlify download-mintlify].each do |a|
          bin.install_symlink "dlmt" => a
        end
      end
    end
    on_intel do
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.1/dlmt-macos-x86_64.tar.gz"
      sha256 "6e4af668d3dc8b4e991c3fad083f7687a09879b13eb985b1532b3287d64fcb59"

      def install
        bin.install "dlmt-macos-x86_64" => "dlmt"
        %w[download-llmstxt dl-llmstxt dl-mintlify download-mintlify].each do |a|
          bin.install_symlink "dlmt" => a
        end
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.1/dlmt-linux-arm64.tar.gz"
      sha256 "92038c87f57842c2d2813238bab2a5f6522c13bf662c69eaa987496c42734d5c"

      def install
        bin.install "dlmt-linux-arm64" => "dlmt"
        %w[download-llmstxt dl-llmstxt dl-mintlify download-mintlify].each do |a|
          bin.install_symlink "dlmt" => a
        end
      end
    end
    on_intel do
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.1/dlmt-linux-x86_64.tar.gz"
      sha256 "eb42e6aec791c1265c627f4ea4f07eb5371ccc47e67a78df61a19975a2cacee7"

      def install
        bin.install "dlmt-linux-x86_64" => "dlmt"
        %w[download-llmstxt dl-llmstxt dl-mintlify download-mintlify].each do |a|
          bin.install_symlink "dlmt" => a
        end
      end
    end
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/dlmt --version")
  end
end
