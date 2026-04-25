# JoshanFan/homebrew-tap

Personal Homebrew tap for macOS apps.

## Install

```bash
brew tap JoshanFan/tap
brew install --cask openusage
```

Upgrade later with `brew upgrade --cask openusage` (or just `brew upgrade`).

## Available Casks

| Cask | Description | Upstream |
|---|---|---|
| `openusage` | Track usage limits across AI coding tools | <https://github.com/robinebers/openusage> |

## How updates work

A scheduled GitHub Action runs `brew bump-cask-pr` once a day. New upstream versions land here as auto-merging PRs once CI (`brew style` + `brew audit --online`) passes.

## Contributing

Fork, add or modify a cask under `Casks/`, then locally:

```bash
brew style Casks/<your>.rb
brew audit --strict --online --cask Casks/<your>.rb
```

Open a PR. CI re-runs the same checks.
