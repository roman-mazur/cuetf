package ci

workflows: test: {
	on: push: branches: ["main"]
	on: pull_request: branches: ["main"]

	jobs: main: #script: "go test -count 2 ./..."

	jobs: "ci-check": #script: """
		go generate ./internal/ci
		git diff --exit-code .github/ || (echo "CI workflows are out of date. Run 'go generate ./internal/ci'." && exit 1)
		"""
}
