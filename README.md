# habit — Homebrew tap

macOS builds of [habit](https://github.com/Vulkan1125/habit-tracker), a calm terminal habit
tracker. The formula installs the universal (Apple Silicon + Intel) binary from the matching
GitHub release, so nothing is compiled locally.

```sh
brew install Vulkan1125/tap/habit
```

Upgrade with `brew upgrade habit`, remove with `brew uninstall habit`.

On Linux use the one-line installer instead:

```sh
curl -fsSL https://github.com/Vulkan1125/habit-tracker/releases/latest/download/install.sh | sh
```

## How it is maintained

`Formula/habit.rb` points at the `habit-<version>-macos-universal.tar.gz` asset published with each
release. For a new version, update `url`, `version` and `sha256` (the value published in the
release's `SHA256SUMS`) and push:

```sh
old=$(brew info --json=v2 Vulkan1125/tap/habit | jq -r '.formulae[0].versions.stable')
brew bump-formula-pr --dry-run habit --version=<new>
# or edit Formula/habit.rb directly and run:
brew audit --strict --online habit
brew test habit
```

## Licence

The formula is MIT, like the tool it packages.
