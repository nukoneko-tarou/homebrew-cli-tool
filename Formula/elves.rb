class Elves < Formula
  Version = 'v1.0.0'
  version Version

  if OS.mac?
    Binary = "elves_#{Version}_darwin_amd64"
    sha256 "15a290459492fae63ff54548f8283ee4c5f5b2a7a6a33f80099a760f6d8ac16e"
  elsif OS.linux?
    Binary = "elves_#{Version}_linux_amd64"
    sha256 "e6a965118ee81804e17d272435086a3e5d94cc1a5e2a167a315820841cfcf8fa"
  end

  desc "Generate the initial project directory from the json file generated by tree."
  homepage "https://github.com/nukoneko-tarou/elves"
  url "https://github.com/nukoneko-tarou/elves/releases/download/#{Version}/#{Binary}"

  def install
    bin.install Binary => 'elves'
  end

  test do
    system "#{bin}/elves", 'version'
  end
end
