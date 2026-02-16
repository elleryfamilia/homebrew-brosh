cask "brosh" do
  version "0.2.2"

  arch arm: "arm64", intel: "x64"

  url "https://github.com/elleryfamilia/brosh/releases/download/v#{version}/brosh-#{version}-#{arch}.dmg",
      verified: "github.com/elleryfamilia/brosh/"
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
