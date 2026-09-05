---
title: qui_workflows
---

# qui_workflows

21 automation workflows for [qui](https://github.com/autobrr/qui) that manage the complete qBittorrent torrent lifecycle: tagging, maintenance, share limits, and cleanup.

<div class="bs-actions" markdown="0">
  <a class="bs-btn bs-btn--primary" href="https://github.com/baker-scripts/qui_workflows">View on GitHub →</a>
</div>

## Highlights

- Hardlink-aware and cross-seed safe: deletes preserve files a cross-seed still references.
- Category-based routing (movies, TV, TorrentLeech, catchall) rather than tracker tiers.
- Last-one-wins share-limit ordering, from most specific rule to least.
- Published and kept in sync by [qui-sync](https://github.com/ProphetSe7en/qui-sync), not a manual script.

Automation tables, execution model, and time reference: **[GitHub README →](https://github.com/baker-scripts/qui_workflows#readme)**
