# homebrew-omnideck

Official Homebrew tap for the [Omnideck](https://github.com/omnideck-dev/cli) CLI tool.

## Install

```sh
brew tap omnideck-dev/omnideck
brew trust omnideck-dev/omnideck
brew install omnideck
```

Or as a single command:

```sh
brew tap omnideck-dev/omnideck && brew trust omnideck-dev/omnideck && brew install omnideck
```

> **Note:** The `brew trust` step is required by Homebrew's third-party tap security policy. You only need to run it once.

## Usage

```sh
omnideck --version
omnideck --help
```

## Updating

```sh
brew upgrade omnideck
```
