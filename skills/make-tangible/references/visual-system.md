# Visual System

Load when HTML, CSS, SVG, Mermaid, reports, proposals, or change explainers
benefit from Praxis's shared semantic substrate. The companion CSS asset is a
source of tokens and `pt-*` primitives, not a page template or information
architecture.

## Use the substrate honestly

Choose structure, interaction, and fidelity from the primary judgment. Use
only primitives whose semantic role is present. A metric needs a real metric
and source; a risk marker needs an explained basis; a completed check needs
evidence. Semantic colors never mean merely “preferred.” Repository-native
styling outranks this substrate when product styling affects the judgment.

For a self-contained HTML artifact, inline the rules used from the package
asset at `../assets/praxis-visual-system.css`; preserve root tokens. When Plannotator will
present it, include `<meta name="plannotator-theme" content="host">` while
retaining standalone light/dark behavior. Keep sourced facts, inference,
proposals, simulations, placeholders, and unresolved states distinct through
text or structure as well as color.

Useful primitives include `pt-shell`, `pt-hero`, `pt-section`, `pt-card`,
`pt-callout`, `pt-status`, `pt-details`, `pt-timeline`, `pt-diagram`, `pt-code`,
`pt-evidence`, `pt-file-card`, `pt-diff-host`, `pt-comment`, `pt-before-after`,
`pt-focus-list`, `pt-check-list`, `pt-risk-map`, `pt-narrative`, and the metric
and ranking primitives. Compose them only when their meaning is present.

## Diagrams, Mermaid, and change surfaces

Inline SVG uses an explicit viewBox, responsive width, internal padding,
readable labels, semantic tokens, reusable markers, and a nearby prose
alternative. Give meaningful diagrams a title or accessible label. Keep
current, proposed, simulated, and unavailable relationships visibly distinct.
Prefer a verified inline SVG over a runtime dependency when that preserves the
judgment. Mermaid theme colors must be literal, not CSS variables or `oklch()`;
render representative architecture and decision flowcharts in light and dark
palettes and reject exceptions, empty/error SVG, missing labels, or wrong
palette output before presentation.

For change explainers, the real diff remains authoritative. Show exact change
metadata, before/after behavior, consequential file rationale, risks with
reasons, anchored comments, review focus, and checks. Use a tested syntax
renderer or the native code-review surface; never hand-color copied lines.
Keep every changed file reachable, collapsed content keyboard-accessible, and
network failure from silently removing evidence.

## Accessibility and medium verification

Use semantic HTML, visible keyboard focus, reading-order tabs, comfortable
targets, text alternatives, responsive layout, usable light/dark modes, and
reduced-motion behavior. Put wide code, evidence, and diagrams in explicit
scrolling surfaces. Exercise representative desktop/mobile widths, themes,
focus, links, provenance, and the exact interaction/export in the intended
medium. For reports, recalculate counts and trace quotations to sources.

Change the shared asset only when the substrate itself needs a justified
evolution. Do not fork it to create an unrelated aesthetic; depart only for the
bounded judgment or a real product design system.
