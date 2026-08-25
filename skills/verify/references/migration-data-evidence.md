# Migration and data evidence

Use this branch when a claim concerns a schema or data transition.

Derive before, during, and after invariants from accepted requirements, issues,
compatibility promises, and deliberate limitations: identity and relationships,
values, uniqueness, ordering, authorization, referential integrity,
reader/writer compatibility, availability, and intentionally removed data.
Build representative starting states including ordinary, boundary, null or
legacy, duplicate, large or interrelated, and mixed-version data when
relevant.

Exercise forward transformation, mixed readers and writers, interruption,
restart, retry, idempotency, partial progress, failure reporting, and rollback
only when restoration is genuinely promised. Compare state through independent
queries or governing application behavior; a successful command is not data
integrity proof. Prefer disposable environments. A destructive, production,
backup, restore, or otherwise consequential effect remains outside this method
unless the loading procedure already holds exact action authority and
action-time safety evidence; externality alone does not make an effect
consequential.

Return states, invariants, observations, limits, and status. This reference
owns no repair or authority.
