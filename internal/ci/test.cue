package ci

workflows: test: {
	on: push: branches: ["main"]
	on: pull_request: branches: ["main"]

	jobs: main: {
		"runs-on": "ubuntu-latest"
		steps: [
			{name: "Checkout", uses: "actions/checkout@v4"},

			{name: "Set up Go", uses: "actions/setup-go@v4", with: "go-version": #versions.go},

			{
				name: "Test"
				run: """
					go install cuelang.org/go/cmd/cue
					go test ./...
					"""
			},
		]
	}
}
