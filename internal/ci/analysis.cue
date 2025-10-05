package ci

workflows: analysis: {
	on: "workflow_dispatch"
	jobs: main: {
		#useGit: true
		#script: "go generate ./internal/analysis"
	}
}
