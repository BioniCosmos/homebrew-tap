cask "rar" do
  arch arm: "arm", intel: "x64"

  version "7.30-beta.1,730b1"
  sha256 arm:   "804aff3a0c044ae348336ffea22c1e8bf5b568e988812c55df54052d9f8e2572",
         intel: "0059385567252f499396da811fb94902ec3f7f54f7a7472b0f125accda6b6900"

  url "https://www.rarlab.com/rar/rarmacos-#{arch}-#{version.csv.second}.tar.gz"
  name "RAR Archiver"
  desc "Archive manager for data compression and backups"
  homepage "https://www.rarlab.com/"

  livecheck do
    url "https://www.rarlab.com/download.htm"
    regex(/>\s*RAR\s+for\s+macOS.*?v?(\d+(:?\.\d+)+)\s*</i)
  end

  depends_on :macos

  binary "rar/rar"
  binary "rar/unrar"
  artifact "rar/default.sfx", target: "#{HOMEBREW_PREFIX}/lib/default.sfx"
  artifact "rar/rarfiles.lst", target: "#{HOMEBREW_PREFIX}/etc/rarfiles.lst"

  # No zap stanza required
end
