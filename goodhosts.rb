# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Goodhosts < Formula
  desc "A utility for editing your hosts file with single entries or blocks of entries."
  homepage "https://github.com/ChrisWiegman/goodhosts"
  version "4.1.2"
  license "MIT license"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ChrisWiegman/goodhosts/releases/download/v4.1.2/goodhosts_macos_x86_64.zip"
      sha256 "59696286aa96ed7b5d054fd0b9bdda3bb253f6d01f2b87944bb7faafe942e0d0"

      def install
        bin.install "goodhosts"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ChrisWiegman/goodhosts/releases/download/v4.1.2/goodhosts_macos_arm64.zip"
      sha256 "e95486d85cc15379011ee85b0dcfd8af5d522e7338ee1db6ff83befd4c91f424"

      def install
        bin.install "goodhosts"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ChrisWiegman/goodhosts/releases/download/v4.1.2/goodhosts_linux_x86_64.zip"
      sha256 "05dde5105cc3169b8251e4f17b0c7f61880be07f7922bab786dbc642ae6cdbd0"

      def install
        bin.install "goodhosts"
      end
    end
  end

  test do
    system "#{bin}/goodhosts version"
  end
end
