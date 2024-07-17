# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jsonrepair < Formula
  desc "🔧 Repair JSON! Solution for JSON Anomalies from LLMs"
  homepage "https://github.com/RealAlexandreAI/json-repair"
  version "0.0.14"
  license "GPLv3"

  on_macos do
    on_intel do
      url "https://github.com/RealAlexandreAI/json-repair/releases/download/v0.0.14/jsonrepair_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "afce5532906cf85e22b55b5a24fbbc180a2fb33a287ab739ce3b68c007b549ae"

      def install
        bin.install "jsonrepair"
      end
    end
    on_arm do
      url "https://github.com/RealAlexandreAI/json-repair/releases/download/v0.0.14/jsonrepair_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "81700df1f9328fb1ef9ec2f23582a86521f68b070ffacc4cea7a93d6b7726759"

      def install
        bin.install "jsonrepair"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/RealAlexandreAI/json-repair/releases/download/v0.0.14/jsonrepair_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "a83b7d7d6a9e19391c03fe51560f22c8bbf67f093005d13a34ca6f6b9207faac"

        def install
          bin.install "jsonrepair"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/RealAlexandreAI/json-repair/releases/download/v0.0.14/jsonrepair_Linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "a5d2687736863c2f39e3b41c709a193acb79a22b8405c61ce910c23c94d12102"

        def install
          bin.install "jsonrepair"
        end
      end
    end
  end

  test do
    system "#{bin}/jsonrepair -v"
  end
end
