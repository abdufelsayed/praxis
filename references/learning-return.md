# Learning Return

Learning is an event: new evidence changes a governing assumption, a local
attempt, or the interpretation of a result. A return carries knowledge to the
owner of that meaning; it does not become a new phase, backlog, or authority
source.

Create a return only when evidence can change accepted meaning, authority,
material uncertainty, or the next important judgment. Keep routine findings
with their current work. Apply the same threshold to confirming evidence.

## Carry the smallest useful message

The return contains only what can change the receiver's next judgment:

```text
Learning {
  target_or_attempt?, evaluator_context?,
  observation, interpretation, kind?, decisive_evidence?,
  affected_truth?, still_valid_truth?, proposed_consequence?,
  uncertainty_or_disagreement?, needed_judgment?, causal_owner
}
```

Omit fields with no decision value. Include a recommendation only when the
evidence supports one; otherwise name the missing evidence or human judgment.
`kind` distinguishes preference, evidence, critique, verification, approval,
or acceptance when the receiver could otherwise misread it. Preserve
disagreement and uncertainty instead of manufacturing consensus. A supporting
capability may identify an affected assumption and propose a consequence. The
receiving inquiry interprets that evidence. Product, package, API, strategic,
or other shared meaning changes only after the requester judges the concrete
consequence; evidence never promotes itself into governing truth.

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
| Implementation approach, mutation boundary, risk, recovery, or authority | current Delivery boundary, or its Plan when one governs |
| An implementation defect that preserves accepted specifications and current implementation authority | bounded Delivery correction |
| Plannotator readiness, selected optional Docker readiness, installation, configuration, or capability limitation | Setup; also the owning skill or core owner when the limitation exposes a contract flaw |
| A ready bounded result | human review, verification, and Result Acceptance |

Plannotator is the plugin's native interaction surface package; Setup owns its
readiness. Initiative is an optional strategic owner, not a global phase. Project is a
routing anchor whose Outcome and boundary belong to Requirements Discovery.
Keep solution choices with the Map, Evolution, Issue, or Plan that owns them.

## Separate local correction from recursive reconciliation

Stay within the current loop when the evidence preserves accepted behavior and
compatibility, Requirements and specifications, the Plan's target/approach
envelope/exclusions/risk/recovery/proof, and still-current human authority.

Return to the causal owner when any of those meanings may change. This is not
movement to the previous workflow step. The causal owner may be several record
boundaries away and may affect several descendants.

Evidence opens a challenge; it does not rewrite accepted meaning. Keep the
accepted record current while the requester judges the proposed consequence.
Pause only authority that materially depends on the challenged meaning.

Before any reconciliation effect, present a transient impact map:

```text
Impact {
  challenged_truth, decisive_evidence,
  affected_descendants, unaffected_truth,
  suspended_authorities, needed_judgment
}
```

After the requester accepts a causal change, revise the false premise at its
source. Trace the changed meaning forward through every dependent descendant.
Update and re-gate only descendants whose meaning or authority changed.
Preserve independent records, evidence, artifacts, and implementation work.
For accepted Requirements, a material change alters meaning, strength, scope,
or downstream obligation. An editorial or provenance-only change does not.

A supporting capability can discover the return. It cannot take over the
owner, accept the consequence, or decide what follows it.

## Re-gate material changes

When evidence materially challenges an accepted transition, record the open
challenge without replacing the accepted meaning. Affected active authority
becomes `withdrawn`. In-flight mutating work reaches the earliest safe point,
makes its state and evidence safe, and returns its partial state.

Only after the requester judges the proposed consequence is the causal owner
revised. The semantic difference is explicit and that owner's gate repeats.
Corrected truth propagates only through descendants whose governing dependency
changed. Their gates repeat when their meaning changed. Affected Plans return
to `awaiting`, and fresh Implementation Authorization is required before
mutation resumes.

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

The receiver independently checks the original human grant, current authorized
implementation boundary, exact approved Plan when one governs, valid governing
ancestors, route, and latest human direction. A supervisor may project a
bounded subset of that active boundary to a worker
while retaining ownership and integration; that is supervised delegation, not
transfer. A pause, redirect, ambiguous source, or dismissed Result Gate leaves
the Plan `awaiting`; revocation, replacement, abandoned route, infeasible
return, or Result Acceptance exhausts it.

## Persist only consequential learning

Conversation and native messages are transient by default. Source, tests, Git,
Plannotator history, owning records, interpreted References, and retained
concrete artifacts can preserve reconstructible evidence.

Keep an unresolved consequential challenge in the owning Project's
`unknowns.md`. Keep decisive source talking points, findings, and limits in the
Research Findings record. Put an accepted consequence in its causal governing
record. Each affected descendant keeps only the change to its own meaning.

Persist an impact map temporarily only when reconciliation must survive
compaction or several sessions. Remove it when governing records reconstruct
the state. If no persistence declaration names a durable consumer, keep the
return as a message. Any additional durable record requires a distinct purpose,
consumer, lifecycle, and authority boundary.

## Preserve conflict and historical acceptance

When evidence conflicts, preserve every material evidence boundary and its
possible consequence. Name the smallest decisive probe or requester judgment.
Suspend only work that requires the unresolved answer.

Later evidence does not misrepresent an earlier Result Acceptance that was
honest within its reviewed evidence boundary. Start a new causal inquiry. State
the earlier evidence boundary and the newly discovered limitation.

## Complete the return

The receiving inquiry decides whether to continue locally, investigate, revise
and re-gate, or request human judgment. A sender does not resume the receiver's
work automatically. If the return blocks work, invalidates authority, changes
the route, or needs human judgment, make the safe current state, proposed
consequence, still-valid truth, and decision needed explicit to the requester.

Reconciliation completes only when the causal meaning is resolved, every
affected descendant has a disposition, required gates are current, and active
authority depends only on valid accepted meaning. Independent non-blocking
Unknowns may remain.
