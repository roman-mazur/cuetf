package ci

// Tests.
//go:generate cue export -e workflows.test --out=yaml -f -o ../../.github/workflows/test_gen.yml

// Analysis of the cloud resources evolution.
//go:generate cue export -e workflows.analysis --out=yaml -f -o ../../.github/workflows/analysis_gen.yaml

// Terraform provider updates.
//go:generate cue export -e workflows.regenerate --out=yaml -f -o ../../.github/workflows/regenerate_gen.yml
//go:generate cue export -e workflows.dependabot --out=yaml -f -o ../../.github/workflows/dependabot_gen.yml
//go:generate cue export -e dependabot --out=yaml -f -o ../../.github/dependabot.yaml

// Metadata.
//go:generate cue export -e workflows.metadata --out=yaml -f -o ../../.github/workflows/metadata_gen.yml

// Automatic release.
//go:generate cue export -e workflows.autorelease --out=yaml -f -o ../../.github/workflows/autorelease_gen.yml
