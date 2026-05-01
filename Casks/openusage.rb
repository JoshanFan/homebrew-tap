cask "openusage" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.21"
  sha256 arm:   "25d20b3cb633e52ad52fd4b7865dddc4d7b7b30d51f6bbb233174af7ff3306a1",
         intel: "265f3954489fd3b14f34addd24dbaeb382f9a98578d2416d46a0a2a99fb6bc81"

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
