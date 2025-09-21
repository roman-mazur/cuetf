package ci

//go:generate cue export -e workflows.test --out=yaml -f -o ../../.github/workflows/test.yml
//go:generate cue export -e workflows.regenerate --out=yaml -f -o ../../.github/workflows/regenerate.yml
//go:generate cue export -e workflows.dependabot --out=yaml -f -o ../../.github/workflows/dependabot.yml
//go:generate cue export -e dependabot --out=yaml -f -o ../../.github/dependabot.yaml
