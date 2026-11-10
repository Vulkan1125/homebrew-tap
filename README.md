# habit — Homebrew tap

macOS builds of [habit](https://github.com/Vulkan1125/habit-tracker), a calm terminal habit
tracker. The formula installs the universal (Apple Silicon + Intel) binary from the matching
GitHub release, so nothing is compiled locally.

```sh
brew install Vulkan1125/tap/habit
```

Upgrade with `brew upgrade habit`, remove with `brew uninstall habit`. `brew livecheck habit`
reports when a newer release exists.

On Linux use the one-line installer, or pick a package, from the
[installation section](https://github.com/Vulkan1125/habit-tracker#installation) of the main README.

## How it is maintained

`Formula/habit.rb` points at the `habit-<version>-macos-universal.tar.gz` asset published with each
release, and Homebrew reads the version from that URL. For a new release, edit `url` and `sha256`
(the value published in the release's `SHA256SUMS`), then check and commit:

```sh
brew audit --strict --online vulkan1125/tap/habit
brew reinstall vulkan1125/tap/habit && brew test vulkan1125/tap/habit
git commit -am "habit X.Y.Z" && git push
```

## Licence

The formula is MIT, like the tool it packages.
