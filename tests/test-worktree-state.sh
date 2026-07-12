#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
SCRIPT="$ROOT/plugins/praxis/skills/worktree/scripts/worktree-state"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

git init -q -b main "$TMP/repo"
normal="$("$SCRIPT" "$TMP/repo")"
grep -q '^kind=normal-checkout$' <<<"$normal"
grep -q '^branch=main$' <<<"$normal"

git -C "$TMP/repo" -c user.name=test -c user.email=test@example.com commit --allow-empty -qm initial
git -C "$TMP/repo" worktree add -q -b feature "$TMP/worktree"
linked="$("$SCRIPT" "$TMP/worktree")"
grep -q '^kind=linked-worktree$' <<<"$linked"
grep -q '^branch=feature$' <<<"$linked"

git init -q -b main "$TMP/subrepo"
git -C "$TMP/subrepo" -c user.name=test -c user.email=test@example.com commit --allow-empty -qm initial
git -c protocol.file.allow=always -C "$TMP/repo" submodule add -q "$TMP/subrepo" module
submodule="$("$SCRIPT" "$TMP/repo/module")"
grep -q '^kind=submodule$' <<<"$submodule"
grep -qv '^superproject=NONE$' <<<"$submodule"

printf 'worktree-state tests ok\n'
