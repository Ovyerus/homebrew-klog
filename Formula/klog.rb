class Klog < Formula
  desc 'CLI tool for time tracking in plain-text files'
  homepage 'https://github.com/jotaen/klog'
  license 'MIT'

  if Hardware::CPU.intel?
    url 'https://github.com/jotaen/klog/releases/download/v6.3/klog-mac-intel.zip'
    sha256 'e8addf503ae6a83251104e43eb8a402d8bec4b78c0b5e85959a49bdb411c629b'
  elsif Hardware::CPU.arm?
    url 'https://github.com/jotaen/klog/releases/download/v6.3/klog-mac-arm.zip'
    sha256 '023a3cf61496a648c0219380322c14c47126475fe67dec531c7ba67309b9a983'
  else
    raise 'unexpected CPU'
  end

  def install
    bin.install 'klog'
  end
end
