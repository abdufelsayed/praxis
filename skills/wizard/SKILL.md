---
name: wizard
description: Generate an interactive Bash wizard for steps only a human can perform, such as provisioning, credential setup, dashboard configuration, or a one-off migration.
---

# Wizard

A wizard turns a manual procedure into a repeatable human journey. Use it only for
steps the agent cannot perform directly.

## Scope the journey

Inspect repository configuration and authoritative provider documentation first.
Identify every manual stage, the exact URL or interface, values captured, where
each value lands, whether it is secret, dependencies between stages, and any
irreversible action.

Present the proposed stage order when a human choice could change the journey.
Never invent dashboard labels or current provider steps; verify them or make the
uncertainty explicit.

## Author from the template

Copy [template.sh](template.sh) to the selected scratch or repository path. Keep
the library above the `STAGES` marker unchanged and replace only the example
stages.

Use `stage`, `say`, `step`, `open_url`, `ask`, `ask_secret`,
`write_env`, `set_secret`, `set_var`, `pause`, and `confirm`. Keep each
stage to one focused task. Open the relevant URL before asking for a value, hide
secret input, persist only selected values, and confirm immediately before an
irreversible action.

A wizard is ephemeral by default. Put it in a scratch location and remove it after
use unless the requester wants a repeatable repository-owned setup path.

## Verify and hand off

Run `bash -n`, run `shellcheck` when available, make the script executable, and
trace every captured value to its declared destination. Do not run the full wizard
because it blocks on human input and may mutate external systems.

Tell the requester the absolute script path, how to run it, what it changes, and
which stages still depend on current provider UI or human authority.
