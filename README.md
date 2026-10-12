# Homebrew tap for Coredence

```sh
brew install --cask coredence/tap/coredence
```

[Coredence](https://coredence.com) reads what you have already written,
distils it into rules about how you actually work, and keeps every rule pointed
at the evidence it came from. The identity lives in one file on your machine.

macOS 14 or later on Apple silicon. The app is signed with a Developer ID,
notarised by Apple, and updates itself; `brew upgrade` works too.

Uninstalling (`brew uninstall --cask coredence`, even with `--zap`) leaves your
identity in `~/.coredence`. Delete that folder yourself if you want it gone.

Releases and issues: [coredence/coredence](https://github.com/coredence/coredence).
