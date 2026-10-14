cask "coredence" do
  version "2.0.3"
  sha256 "79cc09395461819398d454ab0b1e16cb018340ad08be504672d50f396cf0f17c"

  url "https://github.com/coredence/coredence/releases/download/v#{version}/Coredence-#{version}.dmg"
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
  depends_on macos: :sonoma

  app "Coredence.app"
  #  on PATH: plugins start the server as , and
  # ~/.local/bin (where the app writes its own launcher) is not on PATH on
  # every Mac. Homebrew's bin is. Available from 2.0.1; older bundles do not
  # carry the launcher.
  binary "#{appdir}/Coredence.app/Contents/Resources/engine/bin/coredence"

  # ~/.coredence is deliberately not here: it holds the identity itself,
  # and uninstalling the app keeps it, as the site promises. Delete it by
  # hand if that is what you want.
  zap trash: [
    "~/Library/Caches/com.coredence.app",
    "~/Library/Preferences/com.coredence.app.plist",
    "~/Library/Saved Application State/com.coredence.app.savedState",
  ]
end
