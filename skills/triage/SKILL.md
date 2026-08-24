---
name: triage
description: Triage incoming issues or external pull requests into evidence-backed maintainer decisions and agent-ready briefs. Use only when the user asks to work an issue queue or named report.
---

# Triage

Triage turns raw incoming work into a maintainer decision. It does not mutate the
issue tracker until the requester approves the exact action.

## Gather the complete item

Resolve the tracker and named issue or pull request from repository configuration
or explicit user input. Read the body, comments, labels, author, dates, linked
work, and prior triage notes; inspect the diff for a pull request.

Explore the relevant current code and domain language. Check whether the requested
behavior already exists, whether a similar issue or accepted/rejected decision
already covers it, and whether the report still applies to the current version.

## Recommend a disposition

Separate category from state. Use the repository's configured labels rather than
assuming fixed names. Recommend one outcome with evidence:

- needs maintainer judgment;
- needs specific information from the reporter;
- ready for an agent;
- ready for human implementation or review;
- duplicate, already implemented, rejected, or otherwise closed.

For a bug, reproduce the reported symptom when practical. For a pull request,
verify the claimed behavior and inspect the complete diff. Report confirmed,
contradicted, or insufficient evidence before recommending implementation.

If product meaning remains unclear, use Interview or Discover Requirements with
the maintainer. If the work is accepted, use Define Issues to create a durable
agent brief with current behavior, desired behavior, governing interfaces,
acceptance criteria, dependencies, and explicit exclusions.

## Apply only the approved tracker change

Before posting, labeling, assigning, closing, or editing remote state, show the
exact proposed mutations and ask for approval unless the user already requested
those exact actions. Follow repository disclosure policy for AI-generated
comments. Preserve prior human discussion and do not rewrite the original report.

After mutation, reread the issue or PR and verify labels, state, comment content,
and links. Triage does not start implementation or assign an agent unless that
separate action was requested.
