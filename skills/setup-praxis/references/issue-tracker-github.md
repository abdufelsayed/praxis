# GitHub Issue Workflow

Use this adapter when the repository already uses GitHub Issues.

Confirm the repository from the current remote, inspect the authenticated `gh`
surface, and follow existing issue, label, parent-child, and dependency
conventions. Use structured output for inspection and current command help for
every write; this reference intentionally does not cache CLI syntax.

A specification or implementation issue is an ordinary GitHub issue when the requester selects
that destination. Define Issues owns implementation blocking edges. Prefer native
dependencies when the repository exposes them; otherwise use one explicit
blocked-by convention already understood by the repository.

When Evolve is persisted remotely, use one readable issue as the effort map and
link decision or working issues only when separate ownership is useful. The map
keeps destination, decisions so far, frontier, fog, and out of scope; linked
issues own their detail. Issue numbers remain identifiers, not substitutes for
readable linked names.

Setup verifies capability read-only. Creating, editing, commenting, assigning,
closing, or changing repository features remains an explicitly authorized action
owned by the calling workflow.
