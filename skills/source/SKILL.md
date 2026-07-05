---
name: source
description: Use when implementation details depend on unfamiliar, fast-changing, version-sensitive, security-sensitive, high-stakes, or external framework/library/API/tool behavior that should be checked against authoritative sources.
---

# Source

## Kernel Gate

If `praxis:kernel` did not route you to this skill in the current turn, read `../kernel/SKILL.md`, `../kernel/references/control-plane.md`, and `../kernel/references/routes.md` before acting. Obey any active `Agent Control` header before this skill's local flow.

Ground claims in primary sources.

## Required Reads

Use local project sources first. Browse or consult external authoritative sources when the answer depends on current or version-sensitive behavior.

## Preference Order

1. Local project source, docs, lockfiles, and tests.
2. Official docs for the exact version.
3. Source code, changelogs, release notes, RFCs.
4. Examples from the owning organization.

Avoid relying on memory when there is a meaningful chance behavior changed.

## Research Brief Procedure

For deep or delegated research, first write a self-contained research brief:

1. Explain the project/context in one or two plain sentences for a researcher with no prior context.
2. State the single question the research must answer and the decision it informs.
3. Add 3-6 numbered subquestions that cover the question without mixing unrelated missions.
4. Name include/avoid constraints, preferred source types, and any version/date constraints.
5. Require fact/inference/uncertainty separation when sources conflict.
6. Define the output: source link, specific claim, and why it matters for each finding.
7. Do a gap pass before finishing: unresolved contradictions, single-source claims, and what remains unverified.

Use primary sources when possible. Forums, social posts, and generated summaries can suggest leads, but they do not prove claims.

## Output

State the source used and the practical conclusion. When the source changes implementation or planning, link that conclusion into the relevant artifact.

## Transition

```text
output: sourced conclusion
lane: <current lane>
state: ready | blocked
result: fact-checked | unresolved
next: explore | design | plan | execute | docs | stop
evidence: local file, official doc, source code, changelog, release note, or API result
```

Source is a helper gate. Return to the driver that needed the fact after the conclusion is clear.
