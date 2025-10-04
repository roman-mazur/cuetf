package ci

workflows: analysis: {
	on: "workflow_dispatch"
	jobs: main: #script: "go generate ./internal/analysis"
}
