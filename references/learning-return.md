# Learning Return

Learning is an event: new evidence changes a governing assumption, a local
attempt, or the interpretation of a result. A return carries knowledge to the
owner of that meaning; it does not become a new phase, backlog, or authority
source.

## Carry the smallest useful message

The return contains only what can change the receiver's next judgment:

```text
Message {
  target_or_attempt,
  evaluator_context?,
  observation,
  interpretation,
  kind?,
  decisive_evidence?,
  affected_truth?,
  still_valid_truth?,
  uncertainty_or_disagreement?,
  causal_owner?,
  recommendation?
}
```

Omit fields with no decision value. Include a recommendation only when the
evidence supports one; otherwise name the missing evidence or human judgment.
`kind` distinguishes preference, evidence, critique, verification, approval,
or acceptance when the receiver could otherwise misread it. Preserve
disagreement and uncertainty instead of manufacturing consensus. A supporting
capability may identify an affected assumption, but the receiver interprets
and promotes the learning.

When evaluator feedback becomes a return, map its `signal` to `kind` and carry
any consequential evaluator bias or limitation in `interpretation` or
`uncertainty_or_disagreement`. Promotion never makes the original judgment
broader or more reliable than its evidence.

## Find the earliest causal owner

Ask: **Which earliest governing record would change if this answer were
accepted?** Route the message to that owner rather than the nearest descendant
that can absorb a workaround.

| Changed meaning | Causal owner |
| --- | --- |
| Initiative objective, success condition, shared constraint, Project relationship, or ordering rationale | Coordinate Initiative |
| Project Outcome or Project boundary | that Project's Requirements Discovery |
| Requirement, need, constraint, finding, preference, problem-space choice, or problem understanding | Requirements Discovery |
| Progressive strategy or sequence | Evolution Map |
| Selected high-level working form | affected Evolution |
| Detailed behavior, boundary, exclusion, dependency, or required proof | affected Issue |
| Implementation approach, mutation boundary, risk, recovery, or authority | current Implementation Plan |
| An implementation defect that preserves accepted specifications and Plan authority | bounded Delivery correction |
| Plannotator readiness, selected optional Docker readiness, installation, configuration, or capability limitation | Setup; also the owning skill or core owner when the limitation exposes a contract flaw |
| A ready bounded result | human review, verification, and Result Acceptance |

Plannotator is the plugin's native interaction surface package; Setup owns its
readiness. Initiative is an optional strategic owner, not a global phase. Project is a
routing anchor whose Outcome and boundary belong to Requirements Discovery.
Keep solution choices with the Map, Evolution, Issue, or Plan that owns them.

## Separate local correction from backtracking

Stay within the current loop when the evidence preserves accepted behavior and
compatibility, Requirements and specifications, the Plan's target/approach
envelope/exclusions/risk/recovery/proof, and still-current human authority.

Backtrack to the causal owner when any of those meanings changes. Revise the
false premise at its source and update only descendants whose meaning or
authority changed. For accepted Requirements, a material change alters
meaning, strength, scope, or downstream obligation; an editorial or
provenance-only change does not. A supporting capability can discover the
return; it cannot take over the owner or decide what follows it.

## Re-gate material changes

When learning crosses an accepted transition, withdraw the affected Plan's
active authority projection. In-flight mutating work reaches the earliest safe
point, makes its state and evidence safe, and returns its partial state. The
causal owner is revised; the semantic difference is made explicit; and that
owner's gate is repeated. Corrected truth propagates only through affected
descendants, whose gates repeat when their meaning changed. The revised Plan
returns to `awaiting`, and fresh Implementation Authorization is required
before mutation resumes.

Independent read-only investigation may continue when it does not depend on
the invalidated premise. No affected worker result is integrated and no
discretionary cleanup is implied; the owner or human decides whether to keep
the partial baseline, revise, authorize cleanup, or stop after safety is
restored.

## Authority does not travel with a message

Approval, selection, planning, implementation, consequential external action,
Result Acceptance, commit, push, merge, and deployment remain separate
judgments or authorities. A header, message, handoff, or delegate brief is not
authority.

The receiver independently checks the original human grant, exact approved
Plan, valid governing ancestors, route, and latest human direction. A
supervisor may project a bounded subset of active Plan authority to a worker
while retaining ownership and integration; that is supervised delegation, not
transfer. A pause, redirect, ambiguous source, or dismissed Result Gate leaves
the Plan `awaiting`; revocation, replacement, abandoned route, infeasible
return, or Result Acceptance exhausts it.

## Persist only consequential learning

Conversation and native messages are transient by default. Source, tests, Git,
Plannotator history, owning records, interpreted References, and retained
concrete artifacts can preserve reconstructible evidence.

Promote only the causal truth a named future loop needs: the decisive evidence
pointer, consequential human reaction, unresolved uncertainty, and next
recommendation. Broader promotion needs a named future consumer and evidence
that supports that scope. If no persistence declaration names a durable
consumer, keep the return as a message. Do not create message directories,
complete trajectory logs, delegation reports by default, reflection diaries,
scalar reward histories, or duplicate learning ledgers.

## Complete the return

The receiving owner decides whether to continue locally, investigate, revise
and re-gate, or request human judgment. A sender does not resume the receiver's
work automatically. If the return blocks work, invalidates authority, changes
the route, or needs human judgment, make the safe current state, consequence,
and decision needed explicit to the human.
