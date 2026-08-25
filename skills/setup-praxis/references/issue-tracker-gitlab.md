# GitLab Issue Workflow

Use this adapter when the repository already uses GitLab Issues.

Confirm the project from the current remote, inspect the authenticated `glab`
surface, and follow existing issue, label, epic, relationship, and dependency
conventions. Use structured output where available and current command help for
every write; this reference intentionally does not cache CLI syntax.

A specification or implementation issue is an ordinary GitLab issue when the requester selects
that destination. Define Issues owns implementation blocking edges. Prefer native
blocking relationships when the project tier exposes them; otherwise use one
explicit blocked-by convention already understood by the repository.

When Evolve is persisted remotely, use one readable issue or existing epic as the
effort map and link separate issues only when they have useful independent
ownership. The map keeps destination, decisions so far, frontier, fog, and out of
scope; linked issues own their detail. Identifiers remain transport, not readable
names.

Setup verifies capability read-only. Creating, editing, commenting, assigning,
closing, or changing project features remains an explicitly authorized action
owned by the calling workflow.
