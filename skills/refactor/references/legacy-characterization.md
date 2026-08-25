# Legacy characterization

Use this branch when existing tests cannot establish which behavior the
structural change must preserve.

Start from the threatened accepted behavior. Gather relevant requirements,
effort maps, issues, and plans when present; public callers and contracts; current source,
tests and fixtures; relevant repository history when it explains intentional
behavior; controlled runtime observations; and concrete domain scenarios.
Current output is evidence, not automatic truth; a known defect or
unresolved ambiguity remains an explicit gap instead of becoming a golden
master.

Place characterization at the narrowest stable seam capable of detecting the
behavior that could change, while preserving the original full scenario. Cover
ordinary behavior plus the few boundaries, failures, and state transitions
that distinguish an accepted contract from a plausible regression. Properties,
perturbations, or differential observations are useful for broad state spaces
only when their scope and limits are explicit.

Return the behavior, evidence provenance, seam, full scenario, exclusions,
ambiguities, and checks that must remain green. This reference does not select
the new structure, grant authority, call another skill, define completion, or
stop the caller.
