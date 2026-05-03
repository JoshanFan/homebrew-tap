cask "openusage" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.22"
  sha256 arm:   "75bdc829a6ff993d6200a01555eade01d24d2ed7501b5a9332a6aa61862a7808",
         intel: "6afb7af47bb284ad6e77e3d42f9af246aef8b961d6f56110a2d4c5df3000001f"

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
