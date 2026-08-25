# Configure a Repository

Load this method only when the requester asks Praxis to use a repository's local
or remote planning workflow. This is repository configuration, not host
installation.

## Inspect the real workflow

Read repository instructions, remotes, existing issues or planning artifacts,
tracker configuration, `.praxis`, `.scratch`, and ignore rules. Inspect current
CLI help and authentication without causing a remote write. Existing conventions
outrank Praxis defaults.

Recommend the smallest adapter matching work the repository already does:

- [GitHub Issues](issue-tracker-github.md);
- [GitLab Issues](issue-tracker-gitlab.md);
- [local Markdown](issue-tracker-local.md); or
- another tracker described concretely by the requester.

## Record only the adapter

Before writing, show the selected tracker or root, repository identity, where
specifications and issues belong, how real blocking edges are represented, and
whether local state is tracked or ignored.

When durable configuration is useful, write or update one compact
`.praxis/setup.md` unless the repository already declares a better location:

```markdown
# Praxis Setup

## Issue workflow
<adapter, repository or root, artifact location, blocking representation>

## Local state
<tracked or ignored, with the exact scope>
```

Do not copy CLI commands into the repository. The skills using the adapter inspect
the current tool surface at action time. Do not create a tracker, labels, hooks,
templates, empty effort directories, or test issues during setup.

This method is complete when the selected adapter and paths resolve read-only,
the local-state policy is explicit, and every capability requiring a first live
write is reported as deferred.
