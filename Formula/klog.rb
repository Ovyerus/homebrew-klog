class Klog < Formula
  desc 'CLI tool for time tracking in plain-text files'
  homepage 'https://github.com/jotaen/klog'
  license 'MIT'

  if Hardware::CPU.intel?
    url 'https://github.com/jotaen/klog/releases/download/v7.0/klog-mac-intel.zip'
    sha256 '0000000000000000000000000000000000000000000000000000000000000000'
  elsif Hardware::CPU.arm?
    url 'https://github.com/jotaen/klog/releases/download/v7.0/klog-mac-arm.zip'
    sha256 '0000000000000000000000000000000000000000000000000000000000000000'
  else
    raise 'unexpected CPU'
  end

  disable! date: "2026-03-26", because: "The ovyerus/klog tap has been discontinued due to Klog being added to the core Homebrew tap: https://formulae.brew.sh/formula/klog."

  def install
    bin.install 'klog'
  end
end
