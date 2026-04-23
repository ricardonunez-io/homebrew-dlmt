class Dlmt < Formula
  desc "Download a site's llms.txt and all linked markdown/JSON/YAML resources"
  homepage "https://github.com/ricardonunez-io/dlmt"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.0/dlmt-macos-arm64.tar.gz"
      sha256 "ff40ee8fdab45e3eb85002da48569c4fe02bfd103519a91791ad6bf2922713e9"

      def install
        bin.install "dlmt-macos-arm64" => "dlmt"
        %w[download-llmstxt dl-llmstxt dl-mintlify download-mintlify].each do |a|
          bin.install_symlink "dlmt" => a
        end
      end
    end
    on_intel do
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.0/dlmt-macos-x86_64.tar.gz"
      sha256 "72fb492ba156b89daf165f877ec7d093dda774fa4b86e0faa857e2e1363557c4"

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
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.0/dlmt-linux-arm64.tar.gz"
      sha256 "51b38dec670a9e05c648c76a9daae04cab032982b6ad15c78878ff736a6eef4f"

      def install
        bin.install "dlmt-linux-arm64" => "dlmt"
        %w[download-llmstxt dl-llmstxt dl-mintlify download-mintlify].each do |a|
          bin.install_symlink "dlmt" => a
        end
      end
    end
    on_intel do
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.0/dlmt-linux-x86_64.tar.gz"
      sha256 "af1ded48b6e819e95590d60d49238c7471bc0c8b5a8056766765157cdbe0157d"

      def install
        bin.install "dlmt-linux-x86_64" => "dlmt"
        %w[download-llmstxt dl-llmstxt dl-mintlify download-mintlify].each do |a|
          bin.install_symlink "dlmt" => a
        end
      end
    end
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/dlmt --version")
  end
end
