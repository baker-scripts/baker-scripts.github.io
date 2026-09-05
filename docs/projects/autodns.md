---
title: autodns
---

# autodns

A lightweight Flask app that keeps Cloudflare A records current, identifying each record by GUID and detecting the client IP automatically.

<div class="bs-actions" markdown="0">
  <a class="bs-btn bs-btn--primary" href="https://github.com/baker-scripts/autodns">View on GitHub →</a>
</div>

## Highlights

- GUID-based record identification, so a client only needs its own ID to update.
- Automatic client-IP detection, proxy-aware: trusts `X-Forwarded-For` only from configured proxy IPs.
- Apprise notifications on successful updates and on errors.
- Ships as a Docker image (`ghcr.io/baker-scripts/autodns`).

Environment variables, Docker run example, and setup: **[GitHub README →](https://github.com/baker-scripts/autodns#readme)**
