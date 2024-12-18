class Klog < Formula
  desc 'CLI tool for time tracking in plain-text files'
  homepage 'https://github.com/jotaen/klog'
  license 'MIT'

  if Hardware::CPU.intel?
    url 'https://github.com/jotaen/klog/releases/download/v6.5/klog-mac-intel.zip'
    sha256 'db42c929c4167f7b7cadbcd4940a3062056700cd1ed675c78113e58141446b00'
  elsif Hardware::CPU.arm?
    url 'https://github.com/jotaen/klog/releases/download/v6.5/klog-mac-arm.zip'
    sha256 'ceeb7ab6f1c2d765ece54117e166e90fe88b5fbcd8560c89bb4456a93f4e03a6'
  else
    raise 'unexpected CPU'
  end

  def install
    bin.install 'klog'
  end
end
