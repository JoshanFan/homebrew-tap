cask "openusage" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.20"
  sha256 arm:   "17b1c14eaa911db1725babcf1ecf387503a88d659cc43ecf2191148b43cc3ad7",
         intel: "ff8b33f389a953014fd598dd079ea1d376a5d8013b71529fb4a48a58a4c1e294"

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
