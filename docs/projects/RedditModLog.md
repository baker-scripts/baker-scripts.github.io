---
title: RedditModLog
---

# RedditModLog

Automatically publishes Reddit moderation logs to a subreddit wiki page on a schedule, with modmail inquiry links for each action.

<div class="bs-actions" markdown="0">
  <a class="bs-btn bs-btn--primary" href="https://github.com/baker-scripts/RedditModLog">View on GitHub →</a>
</div>

## Highlights

- Writes mod actions to a subreddit wiki page, each with a modmail inquiry link.
- Runs once or continuously, with configurable intervals and force-rebuild commands.
- SQLite-backed action history, so removed content stays queryable.
- Deploys via Python, Docker, Docker Compose, or systemd (one service per subreddit).

Configuration, deployment options, and CLI reference: **[GitHub README →](https://github.com/baker-scripts/RedditModLog#readme)**
