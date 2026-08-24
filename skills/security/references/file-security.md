# File, upload, and path security

Load when attacker-controlled names, paths, files, archives, downloads, or
filesystem effects enter the target.

Trace original bytes and metadata through validation, naming, temporary
storage, parsing, transformation, permanent storage, serving, and deletion.
Treat extension, MIME declaration, magic bytes, parser behavior, and actual
content as different evidence. Generate server-owned storage names and enforce
the final resolved path beneath the intended root.

Inspect traversal, absolute paths, symlinks, archive extraction, overwrite and
collision behavior, race windows, permissions, executable placement, parser
bombs, active content, public serving, range requests, cleanup, and
cross-tenant selection. A sanitized upload name does not protect a later
extraction path. Use synthetic files and disposable storage for active proof;
establish reachable effect rather than reporting every file API as vulnerable.

Sources: [OWASP File Upload](https://cheatsheetseries.owasp.org/cheatsheets/File_Upload_Cheat_Sheet.html),
[CWE-22](https://cwe.mitre.org/data/definitions/22.html),
[CWE-434](https://cwe.mitre.org/data/definitions/434.html).
