#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
KERNEL="$ROOT/tools/praxis-kernel/praxis-kernel"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

mkdir -p "$TMP/.agents/campaigns" "$TMP/.agents/evolution-maps" \
  "$TMP/.agents/plans/draft" "$TMP/.agents/plans/ready" \
  "$TMP/.agents/plans/running" "$TMP/.agents/plans/done"

if [ -n "$("$KERNEL" --root "$TMP")" ]; then
  printf 'empty repository must produce no kernel output\n'
  exit 1
fi

cat >"$TMP/.agents/campaigns/example.md" <<'EOF'
---
type: campaign
created: 2026-07-25
status: active
direction: exploring
---
# Campaign: Example
## Uncertainty Map
- OQ1: What matters?
EOF

output="$("$KERNEL" --root "$TMP")"
grep -q '^Campaign: Example (active, direction: exploring, 1 open question)' <<<"$output"
grep -q '^State: discovering$' <<<"$output"
grep -q '^Next gate: Campaign direction — plannotator annotate .agents/campaigns/example.md --gate --json$' <<<"$output"
grep -q '^Forbidden next: evolution mapping or planning$' <<<"$output"

sed -i.bak 's/direction: exploring/direction: accepted/' "$TMP/.agents/campaigns/example.md"
rm "$TMP/.agents/campaigns/example.md.bak"
output="$("$KERNEL" --root "$TMP")"
grep -q '^State: waiting$' <<<"$output"
grep -q '^Next gate: manual Evolve invocation$' <<<"$output"
grep -q '^Forbidden next: automatic mapping or planning$' <<<"$output"

cat >"$TMP/.agents/evolution-maps/example.md" <<'EOF'
---
type: evolution-map
created: 2026-07-25
status: draft
part-of: ../campaigns/example.md
---
# Evolution Map: Example
Current evolution: none
Authorized evolution: none
Result gate: none
EOF

output="$("$KERNEL" --root "$TMP")"
grep -q '^State: mapping$' <<<"$output"
grep -q '^Next gate: map — plannotator annotate .agents/evolution-maps/example.md --gate --json$' <<<"$output"
grep -q '^Forbidden next: evolution selection, planning, or source mutation$' <<<"$output"

sed -i.bak 's/status: draft/status: approved/' "$TMP/.agents/evolution-maps/example.md"
rm "$TMP/.agents/evolution-maps/example.md.bak"
output="$("$KERNEL" --root "$TMP")"
grep -q '^State: waiting for evolution authorization$' <<<"$output"
grep -q '^Authority: none recorded$' <<<"$output"
grep -q '^Forbidden next: planning or source mutation$' <<<"$output"

sed -i.bak \
  -e 's/Current evolution: none/Current evolution: E1/' \
  -e 's/Authorized evolution: none/Authorized evolution: E1/' \
  "$TMP/.agents/evolution-maps/example.md"
rm "$TMP/.agents/evolution-maps/example.md.bak"

cat >"$TMP/.agents/plans/draft/example.md" <<'EOF'
---
type: plan
created: 2026-07-25
part-of: ../../campaigns/example.md
evolution-map: ../../evolution-maps/example.md
---
# Plan: Example E1
- [ ] T1
Current task: none
Blocked by: none
EOF

output="$("$KERNEL" --root "$TMP")"
grep -q '^Evolution map: Example (approved, current: E1, authorized: E1, result: none)' <<<"$output"
grep -q '^Plan (draft): Example E1 — 0/1 tasks done · current: none' <<<"$output"
grep -q '^State: planning$' <<<"$output"
grep -q '^Authority: E1 authorized$' <<<"$output"
grep -q '^Next gate: plan — plannotator annotate .agents/plans/draft/example.md --gate --json$' <<<"$output"
grep -q '^Forbidden next: source mutation before plan approval$' <<<"$output"

mv "$TMP/.agents/plans/draft/example.md" "$TMP/.agents/plans/running/example.md"
sed -i.bak 's/Current task: none/Current task: T1/' "$TMP/.agents/plans/running/example.md"
rm "$TMP/.agents/plans/running/example.md.bak"
output="$("$KERNEL" --root "$TMP")"
grep -q '^Plan (running): Example E1 — 0/1 tasks done · current: T1' <<<"$output"
grep -q '^State: executing$' <<<"$output"
grep -q '^Next gate: result gate after review and proof$' <<<"$output"
grep -q '^Forbidden next: work outside the approved evolution plan$' <<<"$output"

sed -i.bak 's/Result gate: none/Result gate: pending/' "$TMP/.agents/evolution-maps/example.md"
rm "$TMP/.agents/evolution-maps/example.md.bak"
output="$("$KERNEL" --root "$TMP")"
grep -q '^State: result review$' <<<"$output"
grep -q '^Next gate: result — plannotator review$' <<<"$output"
grep -q '^Forbidden next: commit, delivery, or another evolution$' <<<"$output"

mv "$TMP/.agents/plans/running/example.md" "$TMP/.agents/plans/done/example.md"
sed -i.bak \
  -e 's/status: approved/status: done/' \
  -e 's/Current evolution: E1/Current evolution: none/' \
  -e 's/Authorized evolution: E1/Authorized evolution: none/' \
  -e 's/Result gate: pending/Result gate: approved/' \
  "$TMP/.agents/evolution-maps/example.md"
rm "$TMP/.agents/evolution-maps/example.md.bak"
output="$("$KERNEL" --root "$TMP")"
grep -q '^State: waiting$' <<<"$output"
grep -q '^Forbidden next: automatic mapping or planning$' <<<"$output"
grep -q '^Route: load praxis:using-praxis and resume or reconcile, unless the user redirects.$' <<<"$output"

printf 'praxis-kernel tests ok\n'
