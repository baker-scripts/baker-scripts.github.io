---
title: docker-compose-debugger
---

# docker-compose-debugger

A browser-based tool that turns messy Docker Compose output into clean, readable debugging views, with sensitive values redacted. Everything runs client-side, so no data leaves your browser.

<div class="bs-actions" markdown="0">
  <a class="bs-btn bs-btn--primary" href="https://github.com/baker-scripts/docker-compose-debugger">View on GitHub →</a>
  <a class="bs-btn bs-btn--ghost" href="https://baker-scripts.github.io/docker-compose-debugger/" target="_blank" rel="noopener">Open live app ↗</a>
</div>

<a href="https://baker-scripts.github.io/docker-compose-debugger/" target="_blank" rel="noopener">
  <img class="bs-preview" src="../../assets/images/apps/docker-compose-debugger.svg" alt="Docker Compose Debugger preview" width="400" height="180" />
</a>

## Highlights

- Redacts sensitive env keys, inline URL credentials, vendor tokens, emails, and home-directory paths.
- Three views: a table overview, per-service cards, and full sanitized YAML.
- Copy-as-Markdown buttons for GitHub (pipe tables) or Discord (fenced blocks).
- Merges `user:`, `PUID`/`PGID`, and `group_add` into one column to surface UID/GID mismatches.
- Single self-contained HTML file: no server, no network requests, no tracking.

Feature reference, self-hosting, and development: **[GitHub README →](https://github.com/baker-scripts/docker-compose-debugger#readme)**
