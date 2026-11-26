#!/usr/bin/env bash
# Copy the shared skills/ and LICENSE into every hosts/<host>/.
#
#   scripts/sync-hosts.sh           copy
#   scripts/sync-hosts.sh --check   fail if any copy differs (CI)
#
# Each host directory is installed on its own, so it needs real copies, not
# symlinks. A host gets skills/ only if it already has a skills/ directory.
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
check=0
[ "${1:-}" = "--check" ] && check=1
stale=0

for host in "$root"/hosts/*/; do
  host="${host%/}"
  pairs=("$root/LICENSE:$host/LICENSE")
  [ -d "$host/skills" ] && pairs+=("$root/skills:$host/skills")
  for pair in "${pairs[@]}"; do
    src="${pair%%:*}" dst="${pair#*:}"
    if [ "$check" = 1 ]; then
      if ! diff -r "$src" "$dst" >/dev/null 2>&1; then
        echo "stale: ${dst#"$root"/}" >&2
        stale=1
      fi
    elif [ -d "$src" ]; then
      rm -rf "$dst" && cp -R "$src" "$dst"
    else
      cp "$src" "$dst"
    fi
  done
done

if [ "$stale" = 1 ]; then
  echo "Run scripts/sync-hosts.sh and commit the result." >&2
  exit 1
fi
