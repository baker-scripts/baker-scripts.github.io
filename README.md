# baker-scripts.github.io

[![Deploy Site](https://github.com/baker-scripts/baker-scripts.github.io/actions/workflows/deploy.yml/badge.svg)](https://github.com/baker-scripts/baker-scripts.github.io/actions/workflows/deploy.yml)

Source for <https://baker-scripts.github.io>, the landing site for the [baker-scripts](https://github.com/baker-scripts) organization. It is an [MkDocs Material](https://squidfunk.github.io/mkdocs-material/) site. Each project page is a copy of that repo's README, refreshed weekly.

## Quick start

```bash
pip install mkdocs-material
mkdocs serve    # http://127.0.0.1:8000
```

`mkdocs build` writes `site/`, which is gitignored.

## Configuration

| File | Purpose |
| --- | --- |
| `mkdocs.yml` | Site name, URL, theme (Material, slate, deep purple and amber), extensions, and nav |
| `docs/index.md` | Home page: hero, project cards, live-app cards |
| `docs/projects/*.md` | Mirrored project READMEs. Overwritten by the sync job; do not edit by hand. |
| `docs/stylesheets/extra.css`, `docs/assets/` | Styling and images |
| `scripts/fix-readme-links.sh` | Rewrites mirrored README links that break on this site and adds a "View on GitHub" button |
| `renovate.json`, `.coderabbit.yaml` | Dependency updates and review config |

## Deploy

`.github/workflows/deploy.yml` runs on push to `main`, `workflow_dispatch`, and a weekly cron (Monday 06:00 UTC). It has three jobs:

1. `sync-readmes` fetches the README of `StarrScripts`, `Scripts`, `autodns`, `docker-compose-debugger`, `docs-templates`, `pmm-config`, `qui_workflows`, and `RedditModLog` through `gh api`, runs `scripts/fix-readme-links.sh`, and commits any change to `docs/projects/` as `chore: sync READMEs from source repos`.
2. `build` builds the site and uploads the Pages artifact.
3. `deploy` publishes it to GitHub Pages.

## Add a project

1. Add the repo name to the `for repo in ...` list in the `sync-readmes` job.
2. Add a nav entry to `mkdocs.yml` and a card to `docs/index.md`.
3. Run the workflow with `workflow_dispatch`.
