# Researching External Evidence

> **Status: accepted Research reference design; runtime implementation
> pending.**
>
> Load this reference when a bounded factual question depends on current
> documentation, standards, laws, papers, datasets, or other evidence outside
> the repository. Research retains the claim, synthesis, return, authority,
> and stopping decision.

## Begin from the exact claim

State the fact that must be established, the relevant product or jurisdiction,
required freshness, conditions that could change the answer, and the
consequence of being wrong. Search for evidence that can support or falsify
that claim rather than replacing it with a general topic survey.

## Prefer evidence closest to the claim

Use primary and authoritative sources where available:

- official specifications and product documentation;
- statutes, regulations, and regulator guidance;
- original research papers and datasets;
- first-party release notes, compatibility records, and technical reports; and
- source code or maintained implementation records when they define behavior.

Secondary sources are useful for discovery, explanation, and challenge. Several
secondary sources repeating one claim remain one weak line of evidence when
they derive from the same origin.

## Preserve scope, freshness, and conditions

Record the version, publication or update date, jurisdiction, environment,
product tier, browser, platform, or other condition under which the source
supports the claim.

Distinguish a declared contract from observed compatibility and a historical
statement from current behavior. If the Project depends on an installed or
configured version, generic current documentation may still require codebase
inspection or an empirical probe.

## Resolve conflict instead of voting

When strong sources disagree, investigate whether version, configuration,
scope, terminology, environment, or authority explains the difference. Return
the conditional boundary when both observations can be true.

If proportionate investigation cannot resolve the conflict, preserve both
observations and the unresolved consequence. Source count, popularity, and
confident phrasing do not break a substantive tie.

## Qualify negative searches

A search that finds no authoritative statement establishes only what was
searched. Explain which sources, versions, terms, and sections were inspected
and why they were likely to contain the answer.

When terminology may differ or the evidence may be unpublished, state that
limitation. Absence of a web result is rarely universal evidence of absence.

## Stop at sufficient external evidence

Stop when current evidence supports the bounded fact strongly enough for its
consequence, relevant disagreement and conditions are explicit, and another
source is unlikely to change the answer. Recommend a runtime probe when written
evidence cannot establish behavior in the actual environment.

## Return to Research

Return:

- the bounded answer;
- the decisive primary sources and relevant sections;
- version, date, jurisdiction, and environmental scope;
- conflicts and their conditional boundaries;
- inference and remaining uncertainty; and
- the implication for the caller's question.

Research combines that evidence with repository or empirical evidence and owns
the final answer.
