---
name: make-tangible
description: "Make a hard judgment tangible through the smallest faithful artifact. Use when prose is insufficient and a prototype, comparison, visualization, simulation, or interactive surface would expose the answer."
---

# Make Tangible

Turn one hard-to-judge question into the smallest faithful artifact that makes
the answer easier to see, exercise, compare, or react to. The question decides
the shape. The artifact supplies evidence and reaction; it does not become the
decision itself.

## Name the judgment

State the question, audience, accepted evidence, consequential behavior, needed
fidelity, and reaction that would answer the question. Infer these from the
conversation and current source where possible. Ask only when an unresolved
choice would materially change the artifact.

Use prose, one example, or a simple table when it already makes the judgment
easy. A requested medium is a preference, not the purpose. For pseudo-APIs,
package layouts, configuration sketches, and usage examples, mark unsettled
names and mechanics as provisional.

This step is complete when the artifact has one explicit question and a clear
standard for what it must make judgeable.

## Choose the smallest faithful shape

Choose one primary pattern. Load its reference before construction, and add a
supporting pattern only when it changes what the artifact must contain:

- [explore and discover](references/explore-and-discover.md) for vocabulary,
  criteria, blind spots, or genuinely different directions;
- [compare and choose](references/compare-and-choose.md) for understood
  alternatives;
- [understand and navigate](references/understand-and-navigate.md) for
  relationships, ownership, paths, or states;
- [experience or simulate](references/experience-or-simulate.md) for behavior,
  timing, interaction, logic, or feasibility;
- [elicit and articulate](references/elicit-and-articulate.md) for latent human
  requirements or preferences;
- [manipulate and export](references/manipulate-and-export.md) for editable
  structured values;
- [inspect and annotate](references/inspect-and-annotate.md) for reactions tied
  to exact evidence;
- [observe and assess](references/observe-and-assess.md) for measured shape,
  change, trend, cluster, or anomaly;
- [teaching surface](references/teaching-surface.md),
  [communicate and align](references/communicate-and-align.md), or
  [demonstrate and prove](references/demonstrate-and-prove.md) for those named
  audience purposes.

For a prototype, let the question choose the branch. A logic or state-model
question uses Experience or Simulate. A UI-shape question uses Explore and
Discover. Choose the lowest fidelity that can support an honest conclusion.
Make the judged dimension real and label simulated surroundings.

This step is complete when the chosen medium and fidelity can answer the
question without making unrelated work real.

## Build and exercise the artifact

Build only the states, controls, context, and evidence needed for the judgment.
Distinguish sourced fact, inference, proposal, simulation, and placeholder
where that difference changes interpretation. Compare alternatives under
equivalent consequential conditions or state why the comparison is narrower.

Treat prototype code as throwaway code that answers the question. Put it near
the code or page it examines, mark it clearly, and make it trivial to run. Keep
state in memory by default. Skip production abstractions, hardening, and tests.
Render the relevant state after every action or variant change. Stub mutations
unless the real side effect is the question and the requester authorized it.

For HTML, SVG, Mermaid, or a visual report, load the
[visual system](references/visual-system.md) only when its shared styling helps.
Repository-native styling wins when product styling affects the judgment. Use
[Manage Worktree](../manage-worktree/SKILL.md) only when construction creates a
real checkout collision, rollback, or preservation risk.

Exercise the artifact through its intended medium. Check its consequential
states, controls, navigation, inputs, outputs, links, accessibility, and
responsive behavior where applicable. A generated file or screenshot alone is
not verification.

This step is complete when the artifact runs in its intended medium and every
supported conclusion has been exercised at the declared fidelity.

## Present, learn, and stop

Present the exact artifact through the medium that preserves the behavior under
judgment. Use [Plannotator](../plannotator/SKILL.md) when the requester asks for
it or anchored asynchronous feedback would improve the reaction. Use the native
medium when Plannotator would hide essential behavior. Silence and dismissal
supply no reaction.

Capture selections, rejected parts, combinations, annotations, qualifications,
surprises, and unresolved points. After someone judges a version, give any
material revision a new visible version and exercise it again. Load
[artifact lifecycle](references/artifact-lifecycle.md) only when exact bytes
must be retained, revised after judgment, moved, or removed.

Return the artifact and version, the question it tested, exercised evidence,
supported conclusions, reaction, fidelity limits, unresolved points, and
retention decision. Stop before turning the answer into production work.
