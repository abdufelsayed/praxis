# Cross-Skill Semantic Material

> **Status:** Accepted cross-skill semantic ownership and target runtime
> reference architecture. Runtime assembly status is tracked centrally in
> [Praxis Status](../STATUS.md).

This directory preserves substantial meaning used across package boundaries
and records the accepted runtime projection of that meaning. The complete
package audit has decided which material becomes a shared runtime reference,
which is projected locally, which belongs to another capability, and which
stays outside runtime. This design directory does not reproduce the target
runtime tree.

The current files answer semantic questions:

- [Records](records/README.md) describes durable record meaning, shapes, and
  lifecycles.
- [Feedback and Evaluation](feedback-and-evaluation.md) describes comparison,
  evaluator, proxy-resistance, and stopping knowledge.
- [Learning and Return](learning-and-return.md) describes causal learning and
  return to the exact owner.
- [Worktree Isolation and Preservation](worktree-isolation-and-preservation.md)
  preserves behavioral source for the accepted Manage Worktree package.

Their current names, splits, nesting, and links support design navigation; they
are not runtime paths. Each accepted target package now records whether it
needs the meaning, the exact load condition, and its final placement as shared,
local, inline, capability-owned, or outside runtime.

These are authoring resources. They are not the capital-R **References** used
as durable Project context under the Praxis context model.

## Shared-runtime admission test

This test specializes the normative [runtime information placement
rule](../skills/README.md#runtime-information-placement). Shared placement is
one possible result of package design, not the default home for globally
important or currently duplicated meaning.

Material earns plugin-level shared runtime placement only when all of these are
true:

1. at least two skills directly need the same substantial knowledge;
2. each consumer has a distinct named decision point and load condition;
3. duplicating the knowledge would create meaningful drift;
4. the material is reference rather than behavior owned by another skill;
5. it can be operationally self-contained with each consuming `SKILL.md`;
6. it does not hide entry, authority, skill calls, completion, or stopping; and
7. its target name and boundary follow the accepted load conditions rather
   than the current design filename; and
8. its content can be distilled to the smallest self-contained knowledge that
   changes agent judgment or action at those decision points.

A skill merely reading a governing record or consuming evidence returned by
another capability is not automatically a direct reference consumer.
Transitive dependencies are not repeated.

A direct consumer's accepted target package requires its own `SKILL.md` to link
the shared reference at the named decision point. A mention in design prose or
use by a called skill is not a direct runtime dependency.

## Accepted consumer decisions

The maps below record the direct consumers accepted by the complete target
package audit. The target package sections remain the per-skill authority; this
index owns the cross-package agreement and shared names.

### Feedback and Evaluation

Accepted direct consumers are:

- [Make Tangible](../skills/make-tangible/README.md) for comparison fairness
  and reaction fidelity;
- [TDD](../skills/tdd/README.md) for adaptive cycles and weak-test overfitting;
- [Review](../skills/review/README.md) for multiple reviewers, independence,
  and conflict;
- [Verify](../skills/verify/README.md) for stochastic evidence, repeated
  checks, and evaluator sensitivity;
- [Security](../skills/security/README.md) for multi-hypothesis search and
  conflicting tool or agent evidence;
- [Delegate](../skills/delegate/README.md) for independent evidence paths and
  synthesis; and
- [Plannotator](../skills/plannotator/README.md) on its Review Learning branch
  for longitudinal feedback and revision trajectories.

Owning workflow skills do not need this material merely because feedback
exists. They invoke the capability that owns non-trivial evaluation. Research
keeps the small evaluation discipline it needs inline rather than loading the
shared reference.

### Learning and Return

Accepted direct consumers are:

- [Coordinate Initiative](../skills/coordinate-initiative/README.md) for
  cross-Project learning;
- [Discover Requirements](../skills/discover-requirements/README.md) for
  Requirements truth;
- [Formalize](../skills/formalize/README.md) for Map, Evolution, and Issue
  ownership;
- [Deliver](../skills/deliver/README.md) for implementation, Plan, result, and
  upstream return;
- [Setup](../skills/setup/README.md) for readiness and setup-limit learning;
  and
- [Using Praxis](../skills/using-praxis/README.md) for resumption and ownership
  reconstruction.

Supporting skills may return compact evidence and name an affected assumption
without becoming causal routers.

### Records

Accepted schema consumers are:

- [Coordinate Initiative](../skills/coordinate-initiative/README.md): Core and
  Requirements Discovery meaning;
- [Discover Requirements](../skills/discover-requirements/README.md): Core and
  Requirements Discovery meaning;
- [Formalize](../skills/formalize/README.md): Core and Requirements Discovery
  meaning for Project Brief navigation it directly updates;
- [Evolve](../skills/evolve/README.md): Core and Formalization meaning;
- [Define Issues](../skills/define-issues/README.md): Core and Formalization
  meaning;
- [Plan](../skills/plan/README.md): Core and Delivery meaning;
- [Deliver](../skills/deliver/README.md): Core and Delivery meaning.

Plannotator does not own record schemas. A supporting skill may read a record
without needing schema-authoring knowledge. Creating, relocating, structurally
validating, or revising the record is the stronger evidence of direct need.

The current `records/README.md` and family files preserve the semantic selection
model. The accepted runtime projection is the four-file records family named
below. Using Praxis does not consume those authoring schemas; it receives a
small local navigation reference for locating and resuming work.

### Worktree Isolation and Preservation — capability source

The complete Research package audit found that this material owns a callable
procedure, repository effects, authority checks, completion, and stopping. It
therefore fails the shared-reference admission test. It is accepted semantic
source for the accepted model-invoked Manage Worktree skill, not a shared
runtime reference.

Accepted direct callers are:

- [Deliver](../skills/deliver/README.md) when Plan execution has named
  collision, rollback, or experiment risk;
- [Delegate](../skills/delegate/README.md) when an isolated checkout prevents
  bounded agent conflict;
- [Research](../skills/research/README.md) for a disposable repository
  experiment requiring local mutation;
- [Make Tangible](../skills/make-tangible/README.md) for a repository-native
  prototype with collision risk; and
- [Refactor](../skills/refactor/README.md) for a substantial transformation
  with rollback or conflicting-edit risk.

The caller names the concrete collision, preservation, rollback, or experiment
risk and retains its governing work. Manage Worktree owns deciding whether
isolation is warranted and the safe checkout lifecycle. A dirty tree, agent
presence, or large task does not establish the call. Pair does not silently
move the checkout.

## Maintenance and future package use

When changing an accepted package or designing a future package:

1. start from the skill's behavior and decision points;
2. identify the exact semantic question that might require shared knowledge;
3. inspect only the relevant material here;
4. compare it with local and in-skill placement;
5. identify missing, duplicated, or irrelevant meaning;
6. name and bound the target reference from the accepted load condition; and
7. record the decision in the skill's target package map and `SPEC.md` scope.

Do not build the global shared tree first. Shared runtime structure and missing
capability ownership emerge from accepted packages one concrete need at a time.

## Accepted target runtime references

The complete package audit admits six shared runtime references. Runtime uses
the target names below; the current files remain semantic source and are not
copied mechanically.

| Target runtime reference | Direct consumers and exact load condition | Semantic source |
| --- | --- | --- |
| `references/evaluation.md` | Delegate for genuinely independent evidence paths or conflict; Make Tangible for fair comparison or repeated reaction; Plannotator only for Review Learning; Review for multiple reviewers, adaptive correction, or conflicting judgments; Security for multi-path agent or tool evidence; TDD for broad adaptive behavior spaces; Verify for stochastic, correlated, or evaluator-sensitive evidence. | [Feedback and Evaluation](feedback-and-evaluation.md) |
| `references/learning-return.md` | Coordinate Initiative for cross-Project learning; Discover Requirements when evidence changes accepted Requirements truth; Formalize when child work changes an earlier owner; Deliver when implementation or result evidence changes a Plan or upstream truth; Setup when readiness evidence changes the requesting capability or Praxis contract; Using Praxis when reconstructing the causal owner during resumption. | [Learning and Return](learning-and-return.md) |
| `references/records/foundations.md` | Coordinate Initiative, Discover Requirements, Formalize, Evolve, Define Issues, Plan, and Deliver before creating, moving, materially revising, superseding, or retiring a durable record. | [Records Core](records/core.md) |
| `references/records/discovery.md` | Coordinate Initiative for Initiative and Project navigation; Discover Requirements for the discovery bundle; Formalize only when updating Project Brief navigation. | [Requirements Discovery Records](records/discovery.md) |
| `references/records/formalization.md` | Evolve for Maps and Evolutions; Define Issues for Issues. | [Formalization Records](records/formalization.md) |
| `references/records/delivery.md` | Plan for Implementation Plans; Deliver for Plan authority, retirement, and proved Issue coverage. | [Delivery Records](records/delivery.md) |

There is no runtime reference index. Each consuming `SKILL.md` links every
required target directly at its load point, so the agent never follows a
reference chain. Using Praxis instead owns one local
`references/record-navigation.md` projection containing only the record-kind,
location, and current-owner cues needed to resume work; it does not load record
authoring schemas.

Every target is explanatory only where explanation changes the selected
branch. It omits design history, source commentary, generic background,
duplicated caller behavior, inert examples, and material the model already
supplies reliably.

`evaluation.md` contains only signal types, fair comparison, useful contrast,
context binding, proxy resistance, evaluator independence, compact feedback,
and feedback stopping. `learning-return.md` contains only causal-owner
selection, local correction versus backtracking, re-gating, authority
non-transfer, consequential persistence, and return completion.

`records/foundations.md` contains the persistence boundary, category
distinctions, common envelope, body grammar, movement, supersession, and
cleanup. Each family reference contains only its accepted paths, schemas,
semantics, and family-specific lifecycle. None owns workflow entry, a gate
interaction, mutation authority, or the calling skill's completion.

## Accepted non-reference ownership

[Worktree Isolation and Preservation](worktree-isolation-and-preservation.md)
is the behavioral source for the accepted
[Manage Worktree](../skills/manage-worktree/README.md) package. It produces no
shared runtime reference. Research keeps its small evaluation discipline
inline, so it is not a direct consumer of `evaluation.md`.

Every other cross-skill source contribution is either projected into the
accepted targets above or remains design rationale and provenance outside
runtime. The shared-reference inventory has no unresolved package decision.
