#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
KERNEL="$ROOT/tools/praxis-kernel/praxis-kernel"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

mkdir -p "$TMP/.agents/campaigns" "$TMP/.agents/evolution-maps" "$TMP/.agents/plans/running"

cat >"$TMP/.agents/campaigns/example.md" <<'EOF'
---
type: campaign
created: 2026-07-25
status: active
---
# Campaign: Example
## Open Questions
- OQ1: What matters?
EOF

cat >"$TMP/.agents/evolution-maps/example.md" <<'EOF'
---
type: evolution-map
created: 2026-07-25
status: approved
part-of: ../campaigns/example.md
---
# Evolution Map: Example
Current evolution: E1
EOF

cat >"$TMP/.agents/plans/running/example.md" <<'EOF'
---
type: plan
created: 2026-07-25
part-of: ../../campaigns/example.md
---
# Plan: Example E1
- [ ] T1
Current task: T1
Blocked by: none
EOF

output="$("$KERNEL" --root "$TMP")"
grep -q '^Campaign: Example (active, 1 open question)' <<<"$output"
grep -q '^Evolution map: Example (approved, current: E1)' <<<"$output"
grep -q '^Plan (running): Example E1 — 0/1 tasks done · current: T1' <<<"$output"
grep -q '^Route: load praxis:using-praxis and resume or reconcile, unless the user redirects.$' <<<"$output"

mkdir -p "$TMP/.agents/evolution-maps-done"
sed 's/status: approved/status: done/' "$TMP/.agents/evolution-maps/example.md" >"$TMP/.agents/evolution-maps-done/example.md"
mv "$TMP/.agents/evolution-maps-done/example.md" "$TMP/.agents/evolution-maps/example.md"
output="$("$KERNEL" --root "$TMP")"
if grep -q '^Evolution map:' <<<"$output"; then
  printf 'done evolution map must not be surfaced\n'
  exit 1
fi

printf 'praxis-kernel tests ok\n'
