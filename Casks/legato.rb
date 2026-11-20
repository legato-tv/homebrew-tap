cask "legato" do
  version "0.1.0,20261120"
  sha256 "754f6d2d6957bfecdaa95b2455264b2a7f93d5b2af2111099e7be39ef7e9c451"

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
