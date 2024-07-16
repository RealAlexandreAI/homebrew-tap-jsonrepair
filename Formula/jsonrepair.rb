# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jsonrepair < Formula
  desc "🔧 Repair JSON! Solution for JSON Anomalies from LLMs"
  homepage "https://github.com/RealAlexandreAI/json-repair"
  version "0.0.13"
  license "GPLv3"

  on_macos do
    on_intel do
      url "https://github.com/RealAlexandreAI/json-repair/releases/download/v0.0.13/jsonrepair_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "0c82c436e59db9d8681eef487e95055b121bce80a49f96ce47b8a38b38ddf7b5"

      def install
        bin.install "jsonrepair"
      end
    end
    on_arm do
      url "https://github.com/RealAlexandreAI/json-repair/releases/download/v0.0.13/jsonrepair_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8d23a99c7c1c8fe8a10ba58810cc31e58ed9bcbb10917b4beef434d9978fe0b4"

      def install
        bin.install "jsonrepair"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/RealAlexandreAI/json-repair/releases/download/v0.0.13/jsonrepair_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
        sha256 "ee56d9a1219ffe067c1ca41b8cdb2915bc75eaa8dc8cfe112808edddf5b6898a"

        def install
          bin.install "jsonrepair"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/RealAlexandreAI/json-repair/releases/download/v0.0.13/jsonrepair_Linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "198301d31a3a30db90264ebbf6322c303424d2a7ea8109c2acb9d73e647be5a4"

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
