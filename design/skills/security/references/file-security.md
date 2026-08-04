# File, Upload, and Path Security

> **Status: accepted semantic source; target runtime projection: `references/file-security.md`.**

> Load when attacker-controlled names, paths, files, archives, downloads, or
> filesystem effects enter the target.

Trace the original bytes and metadata through validation, naming, temporary
storage, parsing, transformation, permanent storage, serving, and deletion.
Treat extension, MIME declaration, magic bytes, parser behavior, and actual
content as different evidence. Generate server-owned storage names and enforce
the final resolved path beneath the intended root.

Inspect traversal, absolute paths, symlinks, archive extraction, overwrite and
collision behavior, race windows, permissions, executable placement, parser
bombs, malicious active content, public serving, range requests, cleanup, and
cross-tenant object selection. A sanitized upload name does not protect an
unsafe later extraction path.

Use synthetic files and disposable storage for active proof. Establish the
reachable path and effect rather than reporting every file API or user-provided
filename as vulnerable.

## Sources

- [OWASP File Upload Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/File_Upload_Cheat_Sheet.html)
- [CWE-22: Path Traversal](https://cwe.mitre.org/data/definitions/22.html)
- [CWE-434: Unrestricted Upload](https://cwe.mitre.org/data/definitions/434.html)
