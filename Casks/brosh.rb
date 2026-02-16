cask "brosh" do
  version "0.2.2"

  on_arm do
    url "https://github.com/elleryfamilia/brosh/releases/download/v#{version}/brosh-#{version}-arm64.dmg",
        verified: "github.com/elleryfamilia/brosh/"
  end
  on_intel do
    url "https://github.com/elleryfamilia/brosh/releases/download/v#{version}/brosh-#{version}.dmg",
        verified: "github.com/elleryfamilia/brosh/"
  end

  name "brosh"
  desc "AI-native terminal built for Claude coders"
  homepage "https://github.com/elleryfamilia/brosh"

  app "brosh.app"

  zap trash: [
    "~/Library/Application Support/brosh",
    "~/Library/Preferences/com.ellery.brosh.plist",
    "~/Library/Caches/com.ellery.brosh",
  ]
end
