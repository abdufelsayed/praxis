# Research Findings Records

A Research Findings record preserves substantial factual work that a named
future owner must audit, reproduce, extend, compare, or harvest. It is evidence,
not accepted product meaning. Product judgment enters its governing record only
after explicit acceptance.

## Location and envelope

**Path:** `<initiative-or-project>/research/<topic>.md`

```yaml
---
kind: research-findings
id: research-<topic>
parent: <initiative-or-project-id>
revision: 1
disposition: open | closed | superseded
---
```

```markdown
# <Topic> Research Findings

## Question
## Scope and Evidence Standard
## Sources and Versions
## Source Talking Points and Observed Behavior
## Findings and Inferences
## Counterevidence and Contradictions
## Limits and Blind Spots
## Research Learnings
## Provisional Product Implications
## Informs
```

`Sources and Versions` identifies exact commits, releases, documents,
environments, or retained inputs when they matter. `Source Talking Points and
Observed Behavior` preserves the claims, behavior, and source-local ideas that
matter to the bounded question. `Findings and Inferences` distinguishes direct
evidence from interpretation. `Research Learnings` synthesizes patterns,
challenged assumptions, newly visible possibilities, and risks across the
evidence. `Provisional Product Implications` states what those learnings may
change without claiming adoption, ownership, priority, or a Requirement.
`Informs` names the future inquiry, record, or decision.

When substantial research has a named consumer and the active inquiry permits
research persistence, the assigned research owner may revise this record as
evidence develops. Increment `revision` for a material evidence, interpretation,
or limitation change. This automatic evidence persistence does not establish
product meaning or authorize another record update.

## Harvest without promoting automatically

Research never establishes product truth by itself. The owning discovery loop
interprets each relevant finding and classifies it as one of:

- promoted through accepted product meaning into an atomic Requirement;
- retained as a later design or formalization consideration;
- kept as a genuine unresolved product question;
- rejected for the current product boundary; or
- incidental to the current decision.

The classifications belong in the records that consume them. A Research
Findings record may remain after
harvest because its evidence and limitations are still useful. Do not delete
valuable research merely because its current product implication was rejected
or promoted.

Create a Research Findings record only when substantial evidence has a named
future consumer and must remain durable. The record owns source talking points,
findings, limits, and provisional implications. Requirements and Unknowns keep
their own governing meaning.
