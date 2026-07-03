---
name: source
description: Use when implementation details depend on unfamiliar, fast-changing, version-sensitive, security-sensitive, high-stakes, or external framework/library/API/tool behavior that should be checked against authoritative sources.
---

# Source

Ground claims in primary sources.

## Required Reads

Use local project sources first. Browse or consult external authoritative sources when the answer depends on current or version-sensitive behavior.

## Preference Order

1. Local project source, docs, lockfiles, and tests.
2. Official docs for the exact version.
3. Source code, changelogs, release notes, RFCs.
4. Examples from the owning organization.

Avoid relying on memory when there is a meaningful chance behavior changed.

## Output

State the source used and the practical conclusion. When the source changes implementation or planning, link that conclusion into the relevant artifact.
