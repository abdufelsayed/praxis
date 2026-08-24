# Reader Language

Load this reference for every Write Docs run, alongside exactly one
form-specific reference. It translates Praxis's internal control vocabulary
into prose a named reader can use. It does not change authority, product
meaning, or the documentation surface. It applies to reader-facing
documentation lanes; Praxis record schemas and internal control contracts keep
their own record-oriented language.

## Keep the control model separate from the reader's language

Praxis needs stable internal roles such as agent, caller, owner, requester,
reviewer, and reader. A published document should name the concrete role that
matters in the sentence rather than exporting a generic actor label.

Before drafting, make a small transient actor map:

| Internal fact | Reader-facing term | Use when |
| --- | --- | --- |
| person giving the current direction or effect authority | `you`, requester, or authorizing person | The current reader supplies that direction or authority. |
| person judging a proposal or result | decision-maker, reviewer, or approver | The judgment, not the request, is the subject. |
| person responsible for a Project or operation | project owner, operator, or maintainer | A durable responsibility matters beyond one message. |
| Praxis capability performing bounded work | agent, active owner, or named capability | The automated actor or its ownership is material. |
| intended audience | you, your team, or named reader role | The page's reader needs to act or predict behavior. |

Choose the term from the evidence and keep it stable for the page. If the
reader is the person making the decision, address them directly in guides and
how-to material. If the document compares automation with accountable
judgment, name both actors explicitly and explain the consequence.

## Select the voice by documentation lane

The primary documentation lane sets the default voice:

| Lane | Default voice |
| --- | --- |
| Task Guidance | Direct, sequential instructions with the reader's action and observable result. |
| Operations | Direct action and recovery language, with explicit conditions and safety boundaries. |
| Contract Reference | Neutral, declarative lookup prose; direct address only where an action or choice changes behavior. |
| Understanding | Neutral explanatory prose that names the system, domain, and consequence. |
| Change Communication | Neutral statement of the shipped delta, impact, migration path, and limits. |

Reader Language supplies the shared reader and actor decision. The selected
lane reference supplies the form, sequence, lookup, explanation, or transition
structure. Neither layer defines Praxis record headings or record authority.

## Translate meaning, not strings

Preserve the underlying authority or ownership claim, then rewrite it for the
declared reader:

| Internal claim | Reader-facing explanation |
| --- | --- |
| an explicit person instruction authorizes an effect | “Your instruction must name the action, target, and effect before the system performs it.” |
| a person selects a forward route | “Choose the route that matches the evidence and consequence.” |
| a person accepts a bounded result | “You accept only the result and coverage shown here; that acceptance does not start adjacent work.” |
| an agent returns a decision to its accountable owner | “The agent reports the evidence and waits for your decision.” |

Do not mechanically replace a role with `you`. Use `you` only when the named
reader is that actor. Otherwise use the specific role—requester, reviewer,
approver, operator, maintainer, or project owner—that the source supports.
Use a generic person term only when the system genuinely does not distinguish
the role. A reference to human judgment is useful when the contrast with
automation, tests, or other evidence is itself the point; it is not a default
way to refer to every reader.

Prefer one clear actor and a pronoun over repeated role disclaimers:

```text
The project owner chooses the route. They may revise it when new evidence
changes the outcome; the agent then updates only the affected work.
```

Avoid making every paragraph restate the control boundary. Link to the owning
concept or contract after the first clear explanation, then spend the prose on
the reader's action, prediction, or consequence.

## Verify the reader's voice

Before returning documentation, reread representative paragraphs as the
declared reader and check:

- the reader can tell who acts, who judges, and who may authorize an effect;
- each actor has a concrete, stable name for that surface;
- direct guides address the reader at the point where they must act;
- internal control terms appear only where their distinction changes behavior;
- repeated authority statements have been replaced by one explanation and a
  link when the surrounding contract already owns the detail; and
- a human-versus-agent distinction is present only when it changes the
  reader's prediction or decision.

If the actor map cannot support a natural sentence, return the missing role or
source ambiguity to the owning question instead of filling the gap with a
generic label.
