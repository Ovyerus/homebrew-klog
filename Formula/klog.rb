class Klog < Formula
  desc 'CLI tool for time tracking in plain-text files'
  homepage 'https://github.com/jotaen/klog'
  license 'MIT'

  if Hardware::CPU.intel?
    url 'https://github.com/jotaen/klog/releases/download/v6.6/klog-mac-intel.zip'
    sha256 'e3627b1948f884749c72a01c4727d19d7a889069fd3389ed899cc30c5dfe6741'
  elsif Hardware::CPU.arm?
    url 'https://github.com/jotaen/klog/releases/download/v6.6/klog-mac-arm.zip'
    sha256 '501246c3b137d2ec083d4d099d7664a026410a73c0503201a818593a7f1b22e2'
  else
    raise 'unexpected CPU'
  end

  def install
    bin.install 'klog'
  end
end
