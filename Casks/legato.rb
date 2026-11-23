cask "legato" do
  version "0.1.2,20261123"
  sha256 "e027a9ee25d723c9477dbee186759d499b51d972255f23db117e99c2437bbcb5"

  url "https://downloads.legato.tv/mac/Legato-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Legato"
  desc "IPTV player for your own Xtream or M3U provider"
  homepage "https://legato.tv/"

  livecheck do
    skip "The tap is updated with each release"
  end

  depends_on macos: :ventura

  app "Legato.app"

  zap trash: [
    "~/Library/Application Support/tv.legato.app",
    "~/Library/Caches/tv.legato.app",
    "~/Library/Preferences/tv.legato.app.plist",
    "~/Library/WebKit/tv.legato.app",
  ]
end
