# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Goodhosts < Formula
  desc "A utility for editing your hosts file with single entries or blocks of entries."
  homepage "https://github.com/ChrisWiegman/goodhosts"
  version "4.1.0"
  license "MIT license"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChrisWiegman/goodhosts/releases/download/v4.1.0/goodhosts_4.1.0_macos_arm64.zip"
      sha256 "3e81adeaf1685f39999dc2ab193dbd9db16e0d8f59d62f1bbcc5d9d4f511109b"

      def install
        bin.install "goodhosts"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ChrisWiegman/goodhosts/releases/download/v4.1.0/goodhosts_4.1.0_macos_x86_64.zip"
      sha256 "645710f6751db59c32736aad63573c988033b9d5d2dc185e28a2e1b2c904dc4d"

      def install
        bin.install "goodhosts"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ChrisWiegman/goodhosts/releases/download/v4.1.0/goodhosts_4.1.0_linux_x86_64.zip"
      sha256 "f6b7601ebf1f85dd7a5421767bb511a238171c1788d405190188edf7a00dec13"

      def install
        bin.install "goodhosts"
      end
    end
  end

  test do
    system "#{bin}/goodhosts version"
  end
end
