# Supply Chain and Build Security

> **Status: accepted semantic source; target runtime projection: `references/supply-chain.md`.**

> Load when dependencies, install hooks, build inputs, CI authority, artifacts,
> provenance, or release paths enter the target.

Trace who can influence source, dependency resolution, lockfiles, registries,
build scripts, CI workflows, generated code, caches, artifacts, signing, and
release publication. Inspect unpinned actions or images, mutable tags,
dependency confusion, typosquatting, lifecycle scripts, pull-request execution
with secrets, excessive workflow permissions, artifact substitution, and
unverified downloads.

An advisory match is a hypothesis. Establish the actual resolved version,
affected feature, project configuration, reachability, attacker control, and
consequence. A weak posture score is useful prioritization evidence, not an
automatic vulnerability or release blocker.

Prefer project-native dependency and provenance tools, then focused scanners
such as OSV-Scanner, Trivy, zizmor, or OpenSSF Scorecard when their evidence
surface matches the question. Keep commands and versions current through tool
documentation rather than freezing a universal pipeline.

## Sources

- [OpenSSF Scorecard](https://github.com/ossf/scorecard)
- [SLSA](https://slsa.dev/)
- [OWASP Software Supply Chain Security Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Software_Supply_Chain_Security_Cheat_Sheet.html)
- [OSV-Scanner](https://google.github.io/osv-scanner/)
- [zizmor](https://github.com/zizmorcore/zizmor)
