class Elves < Formula
  desc "Tool to generate project directory structures from JSON files compatible with tree -J"
  homepage "https://github.com/nukoneko-tarou/elves"
  version "1.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nukoneko-tarou/elves/releases/download/v1.2.1/elves_1.2.1_darwin_arm64.tar.gz"
      sha256 "b969b61d18d516edfd4039b444daa88e67191548cbcc4a12aeae4464aa08b0be"
    else
      url "https://github.com/nukoneko-tarou/elves/releases/download/v1.2.1/elves_1.2.1_darwin_amd64.tar.gz"
      sha256 "669ed54e00a001a526ad3ee6017cc2d4b0e560dbbdda55bcbf2e848b80c509f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nukoneko-tarou/elves/releases/download/v1.2.1/elves_1.2.1_linux_arm64.tar.gz"
      sha256 "6ce71747d8342a48a6b8713653d6049ed10f245bb9a1887a095135a99e85b479"
    else
      url "https://github.com/nukoneko-tarou/elves/releases/download/v1.2.1/elves_1.2.1_linux_amd64.tar.gz"
      sha256 "e37d1c02d55992253208f73e170d54cde29c336e815ddee0d13586705d1fd439"
    end
  end

  def install
    bin.install "elves"
  end

  test do
    system "#{bin}/elves", "version"
  end
end
