cask "coredence" do
  version "1.9.2"
  sha256 "891c191bb29c29f95e963a4fb1a44032af9f99aa9e5979c7151bc3bdda041118"

  url "https://github.com/coredence/coredence/releases/download/v#{version}/Coredence-#{version}.dmg",
      verified: "github.com/coredence/coredence/"
  name "Coredence"
  desc "Measured identity from your own writing, for you and your AI assistants"
  homepage "https://coredence.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself (Settings › Updates).
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Coredence.app"

  # ~/.coredence is deliberately not here: it holds the identity itself,
  # and uninstalling the app keeps it, as the site promises. Delete it by
  # hand if that is what you want.
  zap trash: [
    "~/Library/Caches/com.coredence.app",
    "~/Library/Preferences/com.coredence.app.plist",
    "~/Library/Saved Application State/com.coredence.app.savedState",
  ]
end
