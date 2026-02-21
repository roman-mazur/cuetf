# Agent TODO: Suggested Improvements

Items identified during codebase review that are worth addressing.

---

## `internal/tf/defs.cue`

- **Ephemeral resource schemas**: There is an existing `TODO` for `ephemeral_resource_schemas`, a newer Terraform feature. Without it, providers that use ephemeral resources may produce silent schema mismatches.

---

## `internal/gen/generator.go`

- **Embedded shell script**: The multi-step CUE transformation pipeline (`exportCode` constant) is a raw bash script embedded in a Go string. This is hard to test, debug, and maintain. Extracting it to a `.sh` file or rewriting it using Go APIs would improve reliability.
- **No incremental/cached generation**: Every run regenerates all definitions from scratch, even when the underlying schema has not changed.

---

## `internal/ci/`

- **`analysis.cue` cadence**: The analysis workflow is `workflow_dispatch`-only with no documented intended cadence. A comment in the CUE file or in AGENTS.md would clarify when it should be run.

---

## General

- **`write_only` Terraform fields**: Fields marked `write_only` in Terraform schemas (e.g. passwords, secrets) cannot be read back from state. They are currently emitted as normal fields, which could mislead consumers of the generated schemas. Consider marking or excluding them.
- **No `CONTRIBUTING.md`**: The onboarding process for human contributors (add provider, bump version, run tests) is only documented in AGENTS.md. A short `CONTRIBUTING.md` would help.
