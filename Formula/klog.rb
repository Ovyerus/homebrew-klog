class Klog < Formula
  desc 'CLI tool for time tracking in plain-text files'
  homepage 'https://github.com/jotaen/klog'
  license 'MIT'

  if Hardware::CPU.intel?
    url 'https://github.com/jotaen/klog/releases/download/v7.0/klog-mac-intel.zip'
    sha256 'a65fd26d342151b3dabf28daa9d39cdb781836e7f4f735a684f279c2829cbbfb'
  elsif Hardware::CPU.arm?
    url 'https://github.com/jotaen/klog/releases/download/v7.0/klog-mac-arm.zip'
    sha256 '49b97843c6e2681b62d3d0fcaf7107c6679eb4efefda1b3a1bee901a8dbee20a'
  else
    raise 'unexpected CPU'
  end

  def install
    bin.install 'klog'
  end
end
