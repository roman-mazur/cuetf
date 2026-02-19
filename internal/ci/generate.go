package ci

// Tests.
//go:generate cue export -e workflows.test --out=yaml -f -o ../../.github/workflows/test.yml

// Analysis of the cloud resources evolution.
//go:generate cue export -e workflows.analysis --out=yaml -f -o ../../.github/workflows/analysis.yaml

// Terraform provider updates.
//go:generate cue export -e workflows.regenerate --out=yaml -f -o ../../.github/workflows/regenerate.yml
//go:generate cue export -e workflows.dependabot --out=yaml -f -o ../../.github/workflows/dependabot.yml
//go:generate cue export -e dependabot --out=yaml -f -o ../../.github/dependabot.yaml

// Metadata.
//go:generate cue export -e workflows.metadata --out=yaml -f -o ../../.github/workflows/metadata.yml

// Automatic release.
//go:generate cue export -e workflows.autorelease --out=yaml -f -o ../../.github/workflows/autorelease.yml
