package ci

//go:generate cue export -e workflows.test --out=yaml -f -o ../../.github/workflows/test.yml
//go:generate cue export -e dependabot --out=yaml -f -o ../../.github/dependabot.yaml
