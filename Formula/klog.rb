class Klog < Formula
  desc 'CLI tool for time tracking in plain-text files'
  homepage 'https://github.com/jotaen/klog'
  license 'MIT'

  if Hardware::CPU.intel?
    url 'https://github.com/jotaen/klog/releases/download/v6.4/klog-mac-intel.zip'
    sha256 '6d1b620b16d51b0082fb0b86a7cfeaab4ef192f45c48612ee76291b174dd4423'
  elsif Hardware::CPU.arm?
    url 'https://github.com/jotaen/klog/releases/download/v6.4/klog-mac-arm.zip'
    sha256 '4b9effdae042e2058471d3e45e9fca9f12b21930c8b9a1bfba472fdbb65ed1ab'
  else
    raise 'unexpected CPU'
  end

  def install
    bin.install 'klog'
  end
end
