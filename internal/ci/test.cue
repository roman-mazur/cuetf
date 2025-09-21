package ci

workflows: test: {
	on: push: branches: ["main"]
	on: pull_request: branches: ["main"]

	jobs: main: #script: "go test ./..."
}
