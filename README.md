# homebrew-tap

Homebrew tap for Dexiotropic projects.

This repository is intended to hold reusable Homebrew formulae for tools published from other Dexiotropic repositories, including `kubenv` and future projects.

## Structure

- `Formula/`: Homebrew formula files such as `kubenv.rb`

## Usage

Once published to GitHub, the usual tap flow is:

```sh
brew tap dexiotropic/tap
brew install kubenv
```

## Notes

- keep formula files under `Formula/`
- publish release archives and checksums from each source repository first
- copy or automate formula updates into this repository from release pipelines later
