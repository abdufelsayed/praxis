# Fixed-diff code review

Load this reference when Plannotator will show local implementation changes or
one named remote pull or merge request. Code Review supplies human evidence
about the exact diff; it does not accept the result, authorize a commit, or
select the next action.

## Select the complete change

Use one native surface:

```text
plannotator review --git
plannotator review <PR-or-MR-URL>
plannotator review --tailscale --git
plannotator review --tailscale <PR-or-MR-URL>
```

## Tailnet transport

Use the `--tailscale` variants only when the requester explicitly wants a
remote or mobile reviewer. Feature-detect the option with
`plannotator review --help` before starting. Plannotator remains bound to
loopback and uses Tailscale Serve to publish a temporary tailnet-only HTTPS
URL and QR code. This changes transport only: the target remains the complete
fixed diff, and review feedback still supplies evidence rather than approval
or implementation authority. If the option is unavailable or Tailscale Serve
fails, report the exact failure and stop the interaction; do not substitute a
public tunnel, legacy remote mode, or SSH forwarding.

Before opening it, inspect the actual change boundary. Confirm that every
intended tracked, untracked, generated, and configuration file belonging to
the result is represented and unrelated material is excluded. For a remote
request, confirm the URL and represented head revision; the review is about
that shown revision, not whatever the branch may contain later. If the tool
cannot represent the complete intended change, repair the target before
asking for judgment.

## Plan-governed review

Every Delivery code result receives native human review of its complete
fixed diff before Result Acceptance. Explanations, diagrams, file tours,
risk groupings, and review-order cues can lower judgment cost but never replace
code exposure. Direct Work uses this surface only when consequence,
repository policy, or explicit human direction requires it.

Completing review returns evidence. It does not accept an implementation
result, close a Plan, authorize implementation or commit, grant publication, or start another
activity.

## Interpret and route feedback

Return findings to the narrowest owner that can explain and correct them:

- correct an implementation defect locally while accepted specification and
  current implementation authority remain valid;
- return a changed implementation approach or authority boundary to the Plan;
- return changed detailed behavior or required proof to its Issue;
- return changed high-level advancement meaning to its Evolution; and
- return a mistaken need or constraint to Requirements Discovery.

Do not absorb an upstream false premise into the nearest editable file merely
to make the review pass.

## Bind the reviewed revision

Human review binds the exact complete diff shown. Any later source,
configuration, generated-file, formatting, or implementation change
invalidates that review and requires review of the updated diff. New
verification evidence alone does not invalidate review while the reviewed
diff is identical. If a hook, formatter, generator, or correction changes it,
inspect the mutation and repeat review.

## Return to Delivery

Resolve in-bound findings, repeat review whenever the diff changes, and pass
the required verification. Return the exact reviewed boundary, human
judgment, unresolved comments, subsequent mutations, and whether a fresh
review is required. Prepare the result explanation for the Delivery owner;
that owner decides Result Acceptance and any later action.
