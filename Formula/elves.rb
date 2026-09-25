class Elves < Formula
  desc "Tool to generate project directory structures from JSON files compatible with tree -J"
  homepage "https://github.com/nukoneko-tarou/elves"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nukoneko-tarou/elves/releases/download/v1.2.0/elves_1.2.0_darwin_arm64.tar.gz"
      sha256 "bb9dc297df34cc8698ea465086c614e9cb0e6f559b11f465d0f6c047cb47922c"
    else
      url "https://github.com/nukoneko-tarou/elves/releases/download/v1.2.0/elves_1.2.0_darwin_amd64.tar.gz"
      sha256 "7c8dfdae37e3bf6b793cb48dc009021dd0645a65e2ae17b24f479590e8604d81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nukoneko-tarou/elves/releases/download/v1.2.0/elves_1.2.0_linux_arm64.tar.gz"
      sha256 "d322220adf126f1f1a4c68272acd144faa02cdb2758eb822f80036d587b01d8b"
    else
      url "https://github.com/nukoneko-tarou/elves/releases/download/v1.2.0/elves_1.2.0_linux_amd64.tar.gz"
      sha256 "31b7627f622510a242324ec648a76e63812bb0d9fbcffb7162030aff1c54c246"
    end
  end

  def install
    bin.install "elves"
  end

  test do
    system "#{bin}/elves", "version"
  end
end
