# Agent Context: cuetf

This repository manages the generation of CUE schemas for Terraform providers. It uses a Go-based transformation engine and CUE-driven CI to keep provider definitions synchronized with upstream Terraform provider releases.

## 🛠 Directory Guide

* **`internal/jsonschema/`**: Contains the core implementation for the conversion and generation logic. This is the "engine" of the project.
* **`internal/ci/`**: Contains CUE files that define GitHub Actions logic. These files generate the actual `.github/workflows/` files.
* **`internal/analysis/`**: Contains scripts and Go generate directives for provider analysis (e.g. AWS region data). Output is stored in `internal/analysis/out/`.
* **`[provider]/internal/`**: The workspace for a specific provider's schema extraction.
    * **`corpus.tf`**: Contains the Terraform code that imports the provider. Create this to add a new provider or edit to bump a version manually.
    * **`schema/`**: Contains raw Terraform JSON schemas. **DO NOT ANALYZE** (Too large).
* **`[provider]/doc.cue`**: User-facing documentation with an example of importing the provider's definitions.
* **`[provider]/exclude`**: Optional file listing resource name patterns to exclude from generation.
* **`[provider]/res/` & `[provider]/data/`**: Auto-generated CUE definitions for Resources and Data Sources. **DO NOT ANALYZE** (Too many files).

---

## 🚫 Navigation Guardrails (Context Management)

To maintain performance and stay within token limits, follow these rules:

1.  **Ignore Generated Output**: Never attempt to read or analyze the contents of `res/` or `data/` directories. They contain thousands of files.
2.  **Avoid Raw Schemas**: Do not open files in `[provider]/internal/schema/`. These JSON files are massive and will degrade session performance.
3.  **Source of Truth**: If you need to fix how a resource is mapped, modify the transformation logic in the root `internal/` directory.

---

## 🔄 Key Workflows

### 1. Adding a New Provider
To add a new provider (e.g., `aws`):
1.  Create the directory `[provider]/internal/`.
2.  Create `[provider]/internal/corpus.tf` with the required `terraform { required_providers { ... } }` block.
3.  Add `[provider]/doc.cue` with an example of importing the definitions.
4.  Run the update script from the root: `./update-providers.sh [provider-name]`.

### 2. Updating Providers (Automation)
The update lifecycle is largely automated:
* **Dependabot**: Configured to monitor `corpus.tf` files for new provider versions.
* **CI Logic**: When Dependabot opens a PR to bump a version in `corpus.tf`, the GitHub Actions (defined in `internal/ci/`) trigger `./update-providers.sh`.
* The script re-generates the necessary CUE files and commits them to the PR.

### 3. Manual Re-generation
To manually trigger a refresh of a provider's CUE definitions:
```bash
./update-providers.sh [provider-name]
```

> ⚠️ **Do not re-generate `aws`, `google`, or `azurerm` providers.** These are large providers and re-generation takes too long to be practical in an agent session.

---

## 📝 Development Rules
* CUE-Driven CI: Do not edit .github/workflows/ directly. Modify the CUE files in internal/ci/ instead.
  * Run `go generate ./internal/ci` to regenerate the YAML workflow files.
* No Manual Edits to Generated Files: Any changes to files in `res/` or `data/` will be overwritten. Fix the generator in the root `internal/` folder instead.
* Consistency: Always run `cue fmt ./...` after any manual schema generation.
* Todo Hygiene: When completing an item from `internal/agent-todo.md`, remove it from the file as part of the same change.
* Commit Messages: Use a lowercase prefix that maps to the primary directory changed, e.g. `internal/ci:`, `agents:`, `aws:`.