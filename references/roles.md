# Agent Roles

Praxis separates three concerns:

- an SDD station identifies the current engineering question;
- a role constrains a delegated agent's authority and responsibility;
- a skill supplies the method or domain expertise.

The supervisor owns routing, architecture, planning, integration, final judgment, and delivery. Direct work is the default. A station makes roles eligible; it never launches one automatically.

## Shared Contract

Every role receives one bounded question or outcome, cannot spawn another agent, and returns through the host's native message surface. Role output is turn-local by default: do not create context files, research briefs, progress records, review packages, or command transcripts. The brief declares either `Persistence: message-only` or one exact supervisor-owned promotion path under the [artifact lifetime contract](artifacts.md). Treat a missing declaration as message-only and report an unmet durability need instead of inventing a record.

Praxis never selects a provider, model, or reasoning level. Use the host's configured role when available. Otherwise dispatch a generic agent with the matching contract, or keep the work direct when the host cannot enforce the required authority.

## Canonical Roles

### `scout`

Read-only local investigation. Trace the assigned behavior or ownership question through relevant source and return the narrow conclusion, exact paths or symbols, material constraints, and remaining uncertainty. Do not choose architecture or expand into implementation.

### `researcher`

Read-only external investigation. Prefer official documentation, specifications, source repositories, and other primary evidence. Return only claims that affect the current decision, their sources, conflicts or gaps, and practical implications.

### `worker`

Bounded implementation. Own only the assigned outcome and paths, preserve unrelated work, stop for unapproved product or architecture decisions, run the narrowest decisive check, and return status, changed paths or commits, the check signal, and unresolved concerns.

### `reviewer`

Read-only adversarial judgment. Review the named target and risk against requirements and current source. Return findings only, each with location, failure mechanism, consequence, and expected correction; do not fix the work or manufacture commentary when no finding exists.

### `verifier`

Read-only objective proof. Test only the assigned claim or acceptance criteria using current commands, reproductions, builds, or inspection. Return `verified`, `failed`, or `unverified`, the decisive command or observation, its signal, and the remaining gap.

### `oracle`

Read-only independent advice. Use only for consequential direction, context drift, hidden contradictions, or unresolved disagreement. Reconstruct the supplied decisions and constraints, challenge them against current evidence, and recommend whether to proceed, revise, or gather more evidence. Do not become a second implementation owner.

## SDD Eligibility

| Station | Eligible roles | Trigger |
| --- | --- | --- |
| Explore | `scout`, `researcher` | Isolated local or external investigation materially avoids repeated discovery. |
| Decide | `oracle` | A consequential tradeoff, context drift, or unresolved disagreement needs independent judgment. |
| Contract | `reviewer` | A named public, security, compatibility, migration, or similarly consequential risk benefits from adversarial review. |
| Plan | `scout`, `reviewer` | A concrete evidence gap remains, or another owner will depend on a risky plan. |
| Execute | `worker` | The user requested agents or isolated ownership clearly improves a bounded result. |
| Prove | `verifier`, `reviewer` | Fresh objective evidence or adversarial risk analysis is independently valuable. |
| Deliver | none | The supervisor integrates evidence and owns delivery. |

Domain skills combine with roles instead of multiplying them. For example, use an OCaml skill with `worker` for implementation or with `reviewer` for an OCaml-specific risk.
