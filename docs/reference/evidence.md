# Evidence and influences

Praxis is a designed position in an active disagreement about coding-agent
autonomy, human judgment, context, verification, and maintainability. This page
preserves the external sources that most directly shaped that position and the
limits on what Praxis claims from them.

These sources explain and pressure-test Praxis. They are not runtime
dependencies, workflow authorities, supported integrations, or substitutes for
current source, tests, repository evidence, and human judgment. Company reports
describe what their authors built; benchmark results support only the
properties they measure; inaccessible sources support no detailed claim.

Last reviewed against the maintained research inventory: 2026-07-29.

For deeper provenance, see the [industry research map](evidence-landscape.md),
[complete source index](evidence-sources.md), and retained [historical
authorization evidence](security-authorization-and-access-control.md).

## Core intellectual sources

### Lights-on engineering and cumulative changeability

- HumanLayer's [Advanced Context Engineering for Coding
  Agents](https://github.com/humanlayer/advanced-context-engineering-for-coding-agents/blob/main/ace-fca.md)
  develops context control through research, planning, implementation,
  isolated subagents, and high-leverage human review.
- [Why Software Factories
  Fail](https://github.com/humanlayer/advanced-context-engineering-for-coding-agents/blob/main/wsff.md)
  argues that fast functional verification does not settle product,
  architecture, program-shape, or long-term maintainability judgment.
- [Benchmarking Opus 5 on
  SlopCodeBench](https://github.com/humanlayer/advanced-context-engineering-for-coding-agents/blob/main/benchmarking-opus-5-on-slop-code-bench.md)
  and the [SlopCodeBench paper](https://arxiv.org/abs/2603.24755) make one part
  of that concern testable through cumulative requirements applied to an
  agent's own inherited workspace. The benchmark remains a bounded trajectory,
  not a complete maintainability oracle.
- Telos's [adversarial-verifier
  experiment](https://usetelos.ai/blog/killing-coding-agent-slop) explores an
  independent generator-verifier loop on a small SlopCodeBench subset. Its
  reported gains are first-party, limited in scale, and not independently
  reproduced.
- HumanLayer's [authored visual
  corpus](https://github.com/humanlayer/advanced-context-engineering-for-coding-agents/tree/main/images)
  carries part of the workflow, authority, review, and benchmark argument in
  inspectable diagrams and reaction surfaces.

Praxis takes the lights-on position: execution autonomy can grow with evidence,
reversibility, and oracle strength, while consequential judgment and authority
remain explicitly human-owned.

### Unknown discovery, progressive context, and reaction surfaces

- [A Field Guide to Fable: Finding Your
  Unknowns](https://claude.com/blog/a-field-guide-to-claude-fable-finding-your-unknowns)
  treats research, blind-spot passes, references, interviews, prototypes,
  plans, and explanations as different instruments for exposing unknowns.
- [The new rules of context
  engineering](https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models)
  argue for smaller instructions, progressive disclosure, simple tools, model
  judgment, and rich references. Its quantitative claims are first-party and
  model-specific.
- [The unreasonable effectiveness of
  HTML](https://claude.com/blog/using-claude-code-the-unreasonable-effectiveness-of-html)
  and its [example gallery](https://thariqs.github.io/html-effectiveness/) show
  how purpose-built comparisons, explainers, reviews, and prototypes can lower
  human judgment cost without making HTML a required format.

These sources inform Discover Requirements, progressive context loading, Make
Tangible, Orient, and Plannotator's bounded reaction surfaces.

### In-context learning and feedback discipline

- [Algorithm Distillation](https://arxiv.org/abs/2210.14215) and [Reward Is
  Enough: LLMs Are In-Context Reinforcement
  Learners](https://arxiv.org/abs/2506.06303) examine fixed-parameter policies
  improving from interaction histories and feedback at inference time.
- [Reflexion](https://arxiv.org/abs/2303.11366) and [Agentic Context
  Engineering](https://arxiv.org/abs/2510.04618) show adjacent mechanisms for
  retaining verbal or contextual learning without updating model weights.
- Nathan Lambert's [RLHF Book](https://rlhfbook.com/) explains why preferences
  are contextual, why feedback interfaces matter, how process and outcome
  supervision differ, and how optimizing a proxy can degrade the intended
  result.
- [Feedback loops with language models drive in-context reward
  hacking](https://arxiv.org/abs/2402.06627) shows how an agent's actions
  change what later enters its own context, letting test-time optimization of
  an implicit objective produce side effects that static evaluation misses.
- [Spontaneous reward hacking in iterative
  self-refinement](https://arxiv.org/abs/2407.04549) shows that a generator
  and evaluator sharing context can drift away from human judgment over
  refinement rounds, while an evaluator without that shared history stays
  aligned.

Praxis borrows the feedback mechanism, not scalar reward optimization. Tests,
runtime behavior, tools, review findings, human preferences, artifact reactions,
and acceptance remain distinct evaluators with bounded claims. Favorable
feedback never grants authority or starts adjacent work.

## Capability-specific evidence

### Security

- [Codex Security](https://github.com/openai/codex-security) is evidence for
  security work as iterative threat modeling, candidate discovery, validation,
  attack-path reasoning, ranking, remediation, and human review. Praxis does
  not integrate, configure, invoke, or recommend Codex Security.
- Sentry's [security-review
  skill](https://github.com/getsentry/skills/tree/main/skills/security-review)
  contributes attacker-input tracing, framework-protection checks, broad
  research with narrow reporting, confidence separation, and conditional
  references. Its repository coverage is not a universal security taxonomy.
- [Semgrep](https://github.com/semgrep/semgrep),
  [OSV-Scanner](https://google.github.io/osv-scanner/),
  [Trivy](https://github.com/aquasecurity/trivy),
  [Gitleaks](https://github.com/gitleaks/gitleaks),
  [TruffleHog](https://github.com/trufflesecurity/trufflehog),
  [zizmor](https://github.com/zizmorcore/zizmor), the [ZAP Automation
  Framework](https://www.zaproxy.org/docs/automate/automation-framework/), and
  [OpenSSF Scorecard](https://github.com/ossf/scorecard) provide distinct
  evidence classes. No clean result covers the classes a tool never examined,
  and no alert becomes a vulnerability without reachability, attacker control,
  missing protection, and consequence.

These are evidence providers, not Praxis dependencies. Networked,
credentialed, remote, privileged, persistent, or mutating use retains its exact
human authority boundary.

### Maintainability and refactoring

- [A Philosophy of Software
  Design](https://web.stanford.edu/~ouster/cgi-bin/aposd.php), Martin Fowler's
  [Refactoring](https://martinfowler.com/books/refactoring.html), and Sentry's
  [Code Simplifier
  skill](https://github.com/getsentry/skills/blob/main/skills/code-simplifier/SKILL.md)
  support changeability, preservation-first transformation, and bounded
  structural work. Praxis adds explicit pressure, authority, and proof
  boundaries rather than treating cleanup as automatic.

## Operational warnings

- [Faros AI's acceleration-whiplash
  report](https://www.faros.ai/research/ai-acceleration-whiplash) associates
  greater delivery activity with larger changes, review burden, churn, bugs,
  and incidents. Its vendor-owned observational data does not prove causation.
- Reporting on [Amazon outages involving coding-agent
  mishaps](https://www.ft.com/content/00c282de-ed14-4acd-a948-bc8d6bdb339d)
  is retained only as an incident signal because the full paywalled reporting
  was not reviewed for detailed causal claims.
- Mario Zechner's [Building pi in a world of
  slop](https://www.youtube.com/watch?v=RjfbvDXpFls) is practitioner evidence
  that cheap generation does not remove the need for deliberate construction,
  understanding, and engineering taste; no transcript-grounded empirical claim
  depends on it.

These warnings motivate separate effect authority and proportionate safety.
They are not estimates of a general coding-agent failure rate.

## How to read this evidence

1. Treat company reports as primary evidence of what the company says it built,
   not independent validation of its outcome claims.
2. Treat correlations as risks worth investigating, not causal proof.
3. Ask what a benchmark actually grades before using its result as an oracle.
4. Do not count several articles from one practitioner as independent
   corroboration.
5. Preserve access and review limitations beside the claim they constrain.
6. Let new evidence challenge Praxis through concrete scenarios and explicit
   design decisions; do not silently turn an external method into runtime
   behavior.
