# Shared References

> **Design audit index — not a runtime reference index.** The final plugin has
> no root `references/README.md`; consuming skills link exact shared files
> directly. This file exists only to audit current design ownership and
> consumers before implementation.

Load a shared reference only when the selected skill or current control question
names it. These files deepen reusable knowledge; they do not own workflow,
route selection, gates, or authority.

- [Records](records/README.md) defines exact durable record shapes and
  lifecycles.
- [Feedback and Evaluation](feedback-and-evaluation.md) defines non-trivial
  comparison, evaluator, proxy-resistance, and stopping patterns.
- [Learning and Return](learning-and-return.md) defines causal learning and
  exact-owner return.
- [Worktree Isolation and Preservation](worktree-isolation-and-preservation.md)
  guides safe checkout isolation and preservation.

## Direct consumer map

This map is the design audit boundary. A skill lists a shared reference only
when it directly formulates, interprets, or executes the reference's distinct
knowledge. Reading a governing record or consuming evidence returned by
another skill does not make the caller a consumer. Transitive dependencies are
never repeated.

### Feedback and Evaluation

Direct consumers are:

- [Make Tangible](../skills/make-tangible/README.md) for comparison fairness
  and reaction fidelity;
- [Research](../skills/research/README.md) for competing evidence paths,
  repeated probes, and stopping;
- [TDD](../skills/tdd/README.md) for adaptive cycles and weak-test overfitting;
- [Review](../skills/review/README.md) for multiple reviewers, independence,
  and conflict;
- [Verify](../skills/verify/README.md) for stochastic evidence, repeated
  checks, and evaluator sensitivity;
- [Security](../skills/security/README.md) for multi-hypothesis search and
  conflicting tool or agent evidence;
- [Delegate](../skills/delegate/README.md) for independent evidence paths and
  synthesis; and
- [Plannotator](../skills/plannotator/README.md) only on its Review Learning
  path for longitudinal feedback and revision trajectories.

Owning workflow skills do not load this reference merely because feedback
exists. They invoke the capability that owns the non-trivial evaluation.

### Learning and Return

Direct consumers are
[Coordinate Initiative](../skills/coordinate-initiative/README.md) for
cross-Project learning,
[Discover Requirements](../skills/discover-requirements/README.md) for
Requirements truth,
[Formalize](../skills/formalize/README.md) for Map, Evolution, and Issue
ownership,
[Deliver](../skills/deliver/README.md) for implementation, Plan, result, and
upstream return,
[Setup](../skills/setup/README.md) for required Plannotator readiness and
selected optional Docker setup limits, and
[Using Praxis](../skills/using-praxis/README.md) for resumption and ownership
reconstruction. Supporting skills return compact evidence to their caller and
may name an affected assumption, but they do not become causal routers.

### Records

Record-schema consumers are:

- [Coordinate Initiative](../skills/coordinate-initiative/README.md): Core and
  Requirements Discovery;
- [Discover Requirements](../skills/discover-requirements/README.md): Core and
  Requirements Discovery;
- [Formalize](../skills/formalize/README.md): Core and Requirements Discovery,
  only for Project Brief navigation it directly updates;
- [Evolve](../skills/evolve/README.md): Core and Formalization;
- [Define Issues](../skills/define-issues/README.md): Core and Formalization;
- [Plan](../skills/plan/README.md): Core and Delivery;
- [Deliver](../skills/deliver/README.md): Core and Delivery; and
- [Using Praxis](../skills/using-praxis/README.md): the Records router followed
  by only the selected path required to locate or resume work.

Plannotator does not load record schemas. A supporting skill may read a
governing record without loading its schema. Creating, relocating, structurally
validating, or revising the record is what makes a skill a schema consumer.

### Worktree Isolation and Preservation

Possible direct consumers are
[Deliver](../skills/deliver/README.md) for Plan execution with named collision,
rollback, or experiment risk;
[Delegate](../skills/delegate/README.md) for an isolated checkout that prevents
bounded subagent conflict;
[Research](../skills/research/README.md) for a disposable repository experiment
requiring local source mutation;
[Make Tangible](../skills/make-tangible/README.md) for a repository-native
prototype with collision risk; and
[Refactor](../skills/refactor/README.md) for a substantial standalone
transformation with rollback or conflicting-edit risk.

Load it only when the skill itself creates or manages the isolated checkout and
can name the collision, preservation, rollback, parallel-editor, or experiment
risk. Pair never silently moves the checkout; it returns to Deliver when
isolation is needed. Using Praxis does not load this reference.
