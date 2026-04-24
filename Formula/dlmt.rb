class Dlmt < Formula
  desc "Download a site's llms.txt and all linked markdown/JSON/YAML resources"
  homepage "https://github.com/ricardonunez-io/dlmt"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.2/dlmt-macos-arm64.tar.gz"
      sha256 "236e02c8c59eab38ae9396e7c6f34666698bf714d37e706a58d9b5d0d164e70a"

      def install
        bin.install "dlmt-macos-arm64" => "dlmt"
        %w[download-llmstxt dl-llmstxt dl-mintlify download-mintlify].each do |a|
          bin.install_symlink "dlmt" => a
        end
      end
    end
    on_intel do
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.2/dlmt-macos-x86_64.tar.gz"
      sha256 "e4eb04e58822c2f173e755fa10d15877abd8d267abc17e9984708f99142b4a8c"

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
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.2/dlmt-linux-arm64.tar.gz"
      sha256 "b3aa88caa580548861ac15dbe650119a38bdbd8ac5b69deecc644bf050c2c4cb"

      def install
        bin.install "dlmt-linux-arm64" => "dlmt"
        %w[download-llmstxt dl-llmstxt dl-mintlify download-mintlify].each do |a|
          bin.install_symlink "dlmt" => a
        end
      end
    end
    on_intel do
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.2/dlmt-linux-x86_64.tar.gz"
      sha256 "21bd0afb8b804cdc4fcf584f21156d17bf550e003049e3297c77f8971d9e8567"

      def install
        bin.install "dlmt-linux-x86_64" => "dlmt"
        %w[download-llmstxt dl-llmstxt dl-mintlify download-mintlify].each do |a|
          bin.install_symlink "dlmt" => a
        end
      end
    end
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/dlmt --version")
  end
end
