# Agent instructions

Use this method for skills, `AGENTS.md`, `CLAUDE.md`, and any document an
agent reaches through a pointer.

## Design the pointer

A pointer must say what its target contains and which distinct branches should
load it. Front-load the leading trigger word and collapse synonyms that name the
same branch. A must-have rule behind a vague pointer is a routing bug.

Spend two loads deliberately:

- **context load:** material visible on every turn, including skill descriptions
  and agent-instruction files;
- **cognitive load:** documents the human or agent must deliberately choose.

Keep always-loaded material discriminating. Let specialized branches pay their
own load through explicit pointers.

## Protect the information hierarchy

Put material at the highest useful tier:

1. in-file steps needed on every run;
2. in-file reference consulted across most branches;
3. disclosed references loaded only for the branch that needs them.

Keep a concept's definition, rules, and caveats together. Split by invocation or
sequence only when the boundary reduces real distraction or premature completion;
a short self-contained skill needs no router or reference directory.

Every step ends with a checkable completion condition. Sharpen a vague bound before
adding more process. Use strong leading words such as *frontier*, *seam*, or
*tracer bullet* when they recruit a useful established model more precisely than a
repeated explanation.

## Prune sediment

Keep each meaning in one authoritative place. Treat repository configuration and
source as sources of truth rather than copying cheap lookups into prose. Remove
generic advice, repeated constraints, speculative branches, examples that add no
decision value, and stale instructions.

State the desired behavior positively. Use hard prohibitions only for concrete
failure risks and pair them with the safe behavior.

For skills, keep selection criteria in the description, shared workflow in
`SKILL.md`, and substantial branch-specific material behind a pointer. Validate
frontmatter and links, then reread the skill as an agent making a real decision;
schema validity alone does not prove useful behavior.
