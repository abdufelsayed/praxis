# Visual System

> **Status: accepted semantic source; target runtime projection: `references/visual-system.md`.**

> Load this reference when the selected artifact uses HTML or CSS, or when an
> SVG, report, proposal, or change explainer benefits from the shared Praxis
> visual substrate.

The accepted
[`praxis-visual-system.css`](../assets/praxis-visual-system.css) asset is the
single source for Praxis's semantic visual tokens and reusable `pt-*`
primitives. It gives independently generated artifacts a coherent substrate
without prescribing a page, layout, or artifact pattern.

## Keep structure judgment-driven

Choose the artifact's information architecture, interaction, and fidelity from
its primary judgment and selected Make Tangible pattern. Use only the tokens and
primitives that support that structure. Do not reproduce a universal shell,
fixed section sequence, or full component gallery.

When product styling materially affects the judgment, use the actual
repository-native design system instead. For exploratory or non-authoritative
prototypes, the Praxis substrate improves coherence while leaving styling,
product behavior, and implementation choices explicitly provisional.

## Deliver a self-contained surface

For a self-contained HTML artifact, inline the used rules rather than linking
back to the skill package or a remote stylesheet. Preserve the asset's root
tokens so the artifact remains usable when opened directly. When Plannotator
will present the artifact, include its host-theme opt-in while retaining the
standalone light and dark behavior:

```html
<meta name="plannotator-theme" content="host">
```

Use semantic status colors only for evidence that has the corresponding
meaning. Keep sourced facts, inference, proposals, simulations, placeholders,
and unresolved states distinguishable through text or structure rather than
polish or color alone.

## Reusable component vocabulary

The CSS asset contains a bounded vocabulary that runtime artifacts may compose.
These are construction primitives, not required sections:

- `pt-shell`, `pt-hero`, `pt-eyebrow`, `pt-prompt`, and `pt-section` establish
  a readable page frame and hierarchy;
- `pt-kpi-strip`, `pt-kpi`, `pt-rank-list`, and `pt-phrase-grid` summarize
  measured evidence without turning a report into unexplained decoration;
- `pt-card`, `pt-callout`, `pt-status`, `pt-tag`, `pt-details`, and
  `pt-timeline` expose grouped meaning, qualifications, and sequence;
- `pt-diagram`, `pt-code`, and `pt-evidence` carry diagrams, code, and sourced
  proof;
- `pt-pr-meta`, `pt-tldr`, `pt-risk-map`, `pt-file-card`, `pt-diff-host`,
  `pt-comment`, `pt-before-after`, `pt-focus-list`, `pt-check-list`, and
  `pt-rollout` support change explanation and review; and
- `pt-narrative`, `pt-rank-list`, and `pt-phrase-grid` support scoped learning
  and evaluation reports.

Use a primitive only when its semantic role is present. A KPI requires a real
metric and source; a risk marker requires an explained risk basis; a completed
check requires actual evidence; a success color never means merely preferred.

### Plans, proposals, and design explanations

Choose among the following structures according to the question rather than
reproducing them in a fixed order:

- a brief and current conclusion;
- a small evidence or constraint summary;
- sequence or dependency view without invented time estimates;
- architecture or data flow for three or more interacting parts;
- real UI mockups when visible behavior is being judged;
- only the interfaces or schemas that determine the approach;
- material risks with mitigations and evidence; and
- unresolved decisions with the actual owner of each decision.

Backend explanations normally foreground flow and boundaries. Frontend
explanations foreground experienced behavior. Refactors foreground before and
after structure. Infrastructure explanations foreground topology, failure,
and recovery. These are defaults for comprehension, not document templates.

### Change and PR explanations

The code diff remains the authoritative change surface. An explainer may add:

- exact change metadata and a two- or three-sentence summary;
- motivation and a before/after comparison;
- a file tour explaining why each consequential file changed;
- attention, medium, and safe risk groupings with stated reasons;
- comments anchored to the relevant file, symbol, or line;
- a numbered list of the areas where human review matters most;
- verification checks that distinguish passed evidence from proposed checks;
  and
- rollout structure only when deployment is actually part of the judgment.

Use a real syntax-highlighted diff renderer rather than hand-coloring copied
lines. When HTML is the selected medium, the supported implementation uses
`@pierre/diffs` through `getSingularPatch` and `registerDiffsComponent`, with
one diff container per file. Pin the tested package in the implementation or
artifact dependency surface rather than the behavioral design. Verify
word-level additions and removals, line numbers, overflow,
light/dark appearance, and failure behavior before presentation. If external
loading is unavailable or would make the artifact unreliable, embed a tested
local rendering or use Plannotator's native code-review surface instead.

High-risk files may begin expanded and mechanical files collapsed, but the
complete change must remain reachable. Explanatory grouping never hides a
file from the actual review boundary.

### Learning and evaluation reports

A report may compose a narrative finding, sourced metrics, ranked patterns,
change-over-time views, supported contrasts, recurring-language chips, and
proposed instruction changes. Every count and quotation must trace to the
analyzed material. Small samples and missing feedback are limitations shown in
the result, not concealed through polished presentation. The report proposes
adoption; it does not mutate instructions or install hooks.

For inline SVG, use the substrate's semantic tokens for fills, strokes, labels,
and markers. Give each meaningful diagram an accessible name and nearby text
alternative. Keep current, proposed, simulated, and unavailable relationships
visibly distinct.

## Inline SVG construction

Use an explicit `viewBox`, responsive width, internal padding, and sufficient
space for labels. Standard component nodes are rounded rectangles using
`--card` and `--border`; highlighted or proposed nodes use a low-contrast
primary tint plus a primary outline. Connectors use `--muted-foreground`.
Reserve success, warning, and destructive connectors for those actual
meanings. Dashed connectors mean asynchronous, optional, proposed, or
secondary flow only when a nearby legend or label removes ambiguity.

Any admitted runtime surface preserving this material must give agents
directly reusable examples for:

- ordinary and highlighted component nodes;
- solid, dashed, horizontal, vertical, and curved arrows with reusable marker
  definitions;
- edge labels;
- process, decision, terminal, success, and failure nodes;
- request/response pairs and fan-out;
- architecture and data-flow compositions; and
- small quantitative bars with labeled scales and values.

Prefer `120–160px` wide and `48–56px` high component nodes, at least `60px`
horizontal and `40px` vertical separation, and `8–12px` separation between an
edge and its label. These are readability starting points rather than a reason
to force a diagram into a predetermined grid. Meaningful SVGs require a
`<title>` or accessible label and an adjacent prose alternative.

Define reusable SVG classes inside the SVG so self-contained artifacts do not
depend on hidden page selectors. Avoid external images or fonts when their
failure would remove meaning.

## Mermaid boundary

Mermaid theme configuration requires literal colors rather than CSS variables
or `oklch()` expressions. When Mermaid is used, render the diagram in both
light and dark palettes and reject empty or error output before presentation.
Prefer verified inline SVG when a runtime diagram dependency would weaken the
self-contained artifact.

Use the page's computed `color-scheme` and literal palettes at Mermaid's color
processing boundary:

```javascript
const colorScheme = getComputedStyle(document.documentElement).colorScheme;
const isDark = colorScheme === "dark"
  || (colorScheme === "normal"
    && window.matchMedia("(prefers-color-scheme: dark)").matches);

const palette = isDark
  ? {
      darkMode: true,
      primaryColor: "#9a9dff",
      primaryTextColor: "#070b14",
      primaryBorderColor: "#343b45",
      lineColor: "#9da5b2",
      secondaryColor: "#1e242e",
      secondaryTextColor: "#dadee5",
      tertiaryColor: "#1e242e",
      tertiaryTextColor: "#dadee5",
      background: "#070b14"
    }
  : {
      primaryColor: "#5537eb",
      primaryTextColor: "#ffffff",
      primaryBorderColor: "#d4d8de",
      lineColor: "#414853",
      secondaryColor: "#e1e5eb",
      secondaryTextColor: "#414853",
      tertiaryColor: "#e1e5eb",
      tertiaryTextColor: "#414853",
      background: "#f3f5f9"
    };

mermaid.initialize({
  theme: "base",
  themeVariables: {
    ...palette,
    fontFamily: "'Inter', system-ui, sans-serif",
    fontSize: "14px"
  }
});
```

The implementation test must execute representative architecture and decision
flowcharts against the supported Mermaid runtime in both palettes. It must
reject exceptions, missing or empty SVG, a diagram type of `error`,
`aria-roledescription="error"`, `Syntax error in text`, missing labels, and
output that does not contain the selected primary colors. Merely inspecting
the Mermaid source string is not verification.

## Preserve accessible behavior

Use semantic HTML, visible keyboard focus, a reading-order tab sequence,
comfortable control targets, text alternatives for meaningful diagrams, and
responsive layouts. Preserve usable light and dark modes and respect reduced
motion. Keep intentionally wide code, evidence, or diagrams inside an explicit
scrolling surface rather than making the whole artifact overflow.

## Verify the selected medium

Exercise the artifact in its intended medium and directly when standalone use
is claimed. Check representative desktop and mobile widths, light and dark
appearance, keyboard and focus behavior, reduced motion when relevant, source
links, provenance labels, and the exact interaction or reaction the artifact
exists to support.

For change explainers, additionally check that the represented diff matches
the selected change, every intended file remains reachable, anchors point to
the claimed locations, collapsed content is keyboard accessible, and no
network failure silently removes the diff. For reports, recalculate sampled
counts and follow representative quotations back to their sources. For SVG and
Mermaid, check labels, text alternatives, overflow, both palettes, and the
error signatures above.

Change the shared CSS through Make Tangible when the substrate itself needs to
evolve. Do not fork it per artifact merely to create a different aesthetic;
depart only when the bounded judgment or an actual product design system
requires the difference.
