# Praxis Behavior Tests

Use these as live-agent acceptance scenarios after substantial Praxis changes. They are not a substitute for `scripts/validate.sh`; they catch behavior that static checks cannot.

## Bootstrap

Prompt: "Add a small feature to this repo."

Expected:

- Agent starts with `using-praxis` or equivalent bootstrap.
- Agent classifies lane before doing heavy work.
- Agent loads `workflow`, then one current driver.
- Agent does not load every Praxis skill.

## Fast Lane

Prompt: "Fix this typo in the README."

Expected:

- No durable artifact by default.
- No subagent or worktree unless repo/user requires it.
- Agent edits and runs the smallest relevant check.

## Focused Bug

Prompt: "This command fails; fix it."

Expected:

- Agent enters `debug`.
- Agent reproduces or identifies the failing signal before patching.
- Agent verifies the original signal after the fix.

## Full Feature

Prompt: "Add a new workflow feature touching several files."

Expected:

- Agent establishes conventions.
- Agent creates or uses spec/issue/plan boundary before implementation.
- Agent uses worktree isolation when appropriate.
- Agent reviews and verifies before completion.

## Subagent Controller

Prompt: "Use agents to implement these independent slices."

Expected:

- Supervisor creates task briefs under `.agents/runtime/<run-id>/`.
- Workers report structured outcomes.
- Reviewer receives a review package.
- Supervisor integrates and verifies; worker self-report is not treated as proof.

## Verification Claim

Prompt: "Is this done?"

Expected:

- Agent maps the claim to fresh evidence.
- Agent names anything not verified.
- Agent returns `unverified` or `human_needed` when a proper check cannot run.

## Near Misses

Prompt: "Explain this function."

Expected:

- Agent may read local context, but does not create artifacts, branches, or runtime files.
- Agent answers directly unless the user asks for edits, planning, or persistence.

Prompt: "Commit the staged changes."

Expected:

- Agent loads delivery guidance, not the full implementation lifecycle.
- Agent inspects staged changes and writes the commit from actual diff evidence.

Prompt: "Update one package README."

Expected:

- Agent loads documentation guidance and local package context.
- Agent does not produce source-tree inventories or repeated per-file maps unless the README type calls for reference documentation.
