# This file was generated by GoReleaser. DO NOT EDIT.
class GoMud < Formula
  desc "一个用 Go 语言开发的 MUD 客户端"
  homepage "https://github.com/mudclient/go-mud"
  version "0.6.1-RC7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mudclient/go-mud/releases/download/v0.6.1-RC7/go-mud_v0.6.1-RC7_Darwin_x86_64.tar.gz"
    sha256 "fadf4cbe81d50e1b1cb433fe0df5a619ce733cd2fe84411c8ac1072037c38d23"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mudclient/go-mud/releases/download/v0.6.1-RC7/go-mud_v0.6.1-RC7_Linux_x86_64.tar.gz"
      sha256 "893700df982a26185973636b21607c57981aa0791dd1a9743ed2feaf2dad944f"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mudclient/go-mud/releases/download/v0.6.1-RC7/go-mud_v0.6.1-RC7_Linux_ARMv8.tar.gz"
        sha256 "58e6c31c2296bdf824f1dd3d26186d94fdb3271ac74b186798e7d448f5f89de6"
      else
        url "https://github.com/mudclient/go-mud/releases/download/v0.6.1-RC7/go-mud_v0.6.1-RC7_Linux_ARMv6.tar.gz"
        sha256 "bc8575d8f9a6a630c5fb84bdbba1d7f8c06d3de33e22845fe86e96b23f8951cc"
      end
    end
  end

  def install
    bin.install "go-mud"
  end
end
