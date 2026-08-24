# Approval-bearing reviews

Use this method only when the requester wants explicit approval of one substantial
plan or result.

Before opening Plannotator, name the complete target, exact revision, approval
claim, and what approval does not authorize. Use:

```text
plannotator annotate <plan-or-result> --gate --json
```

Omit `--require-approval`; denial is useful human feedback, not a command
failure. Present the complete current target. Show a diff only when its baseline
is known and reliable.

For a plan, include behavior, boundaries, seams, implementation sequence, risks,
and proof. For a result, include actual behavior, decisive evidence, limitations,
learning, unresolved questions, and the exact acceptance claim. A partial result
must keep unproved coverage visible.

Interpret the reaction:

- approval accepts only the presented revision;
- feedback without approval requests revision;
- meaning-changing feedback returns to the document's owner;
- dismissal or empty closure supplies no judgment;
- transport failure leaves the review unfinished.

After a material revision, present the new revision again when explicit approval
is still needed. Approval does not select the next issue, authorize implementation,
commit, push, publish, deploy, merge, or clean up state.
