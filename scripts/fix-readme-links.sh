#!/usr/bin/env bash
# Rewrite README links that break when mirrored on baker-scripts.github.io.
set -euo pipefail

DOCS_DIR="${1:-docs/projects}"

fix_file() {
  local file="$1"
  local repo
  repo="$(basename "$file" .md)"

  sed -i \
    -e 's|https://github.com/TRaSH-Guides/qui_workflows|https://github.com/TRaSH-/qui_workflows|g' \
    -e 's|TRaSH-Guides/qui_workflows|TRaSH-/qui_workflows|g' \
    -e 's|https://github.com/qui-lern/qui|https://github.com/autobrr/qui|g' \
    -e 's|https://github.com/TRaSH-Guides/qui|https://github.com/autobrr/qui|g' \
    -e "s|](LICENSE)|](https://github.com/baker-scripts/${repo}/blob/main/LICENSE)|g" \
    -e 's|](plex-guide/)|](https://baker-scripts.github.io/docs-templates/plex/)|g' \
    -e 's|https://github.com/baker-scripts/StarrScripts/blob/main/CONTRIBUTING.md|https://github.com/baker-scripts/StarrScripts/issues|g' \
    -e 's|Please refer to the \[contribution guidelines\](https://github.com/baker-scripts/StarrScripts/issues) for more information.|Please [open an issue](https://github.com/baker-scripts/StarrScripts/issues) for more information.|g' \
    "$file"
}

# Insert a "View on GitHub" button after the page title so each mirrored
# README links back to its source repo. Idempotent: skips if already present.
add_github_button() {
  local file="$1"
  local repo
  repo="$(basename "$file" .md)"

  grep -q 'class="bs-actions"' "$file" && return 0

  awk -v repo="$repo" '
    /^# / && !done {
      print
      print ""
      print "<div class=\"bs-actions\" markdown=\"0\">"
      print "  <a class=\"bs-btn bs-btn--primary\" href=\"https://github.com/baker-scripts/" repo "\">View on GitHub →</a>"
      print "</div>"
      done = 1
      next
    }
    { print }
  ' "$file" > "$file.tmp" && mv "$file.tmp" "$file"
}

for file in "$DOCS_DIR"/*.md; do
  [ -f "$file" ] || continue
  fix_file "$file"
  add_github_button "$file"
done
