# homebrew-shimback

Homebrew tap for [shimback](https://github.com/pnavais/shimback), a small,
dependency-free command-line shim.

## Install

```sh
brew tap pnavais/shimback
brew install shimback
```

## Updating the formula for a new release

`Formula/shimback.rb` downloads a specific tagged release asset and pins
its exact sha256 -- it does not follow `releases/latest`, so it needs a
manual bump on every shimback release: update `version`, both `url`s
(the tag in the path), and both `sha256`s (from that release's
`SHA256SUMS` asset).
