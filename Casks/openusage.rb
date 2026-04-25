cask "openusage" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.15"
  sha256 arm:   "a391072d913dca9966de0937e21a13ee7fff88c4052b5ff1dac9c513682b3b49",
         intel: "f4c573dc4732efefa3df8d13a966ed774af22beedd120c91e5956a0efc553405"

  url "https://github.com/robinebers/openusage/releases/download/v#{version}/OpenUsage_#{version}_#{arch}.dmg",
      verified: "github.com/robinebers/openusage/"
  name "OpenUsage"
  desc "Track usage limits across AI coding tools"
  homepage "https://www.openusage.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "OpenUsage.app"

  zap trash: [
    "~/Library/Application Support/OpenUsage",
    "~/Library/Caches/OpenUsage",
    "~/Library/Preferences/com.openusage.app.plist",
  ]
end
