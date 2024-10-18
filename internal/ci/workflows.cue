package ci

import "github.com/roman-mazur/cuetf/internal/ci/github"

#versions: {
	go: "1.23.2"
	cue: "0.10.0"
}

workflows: [N=string]: github.#Workflow & {name: N}

workflows: test: {
	on: push: branches: ["main"]
	on: pull_request: branches: ["main"]

	jobs: main: {
    "runs-on": "ubuntu-latest"
    steps: [
    	{name: "Checkout", uses: "actions/checkout@v4"},

    	{name: "Set up Go", uses: "actions/setup-go@v4", with: "go-version": #versions.go},
    	{name: "Set up CUE", run: "go install cuelang.org/go/cmd/cue@v\(#versions.cue)"},

    	{name: "Test", run: "go test ./..."},
    ]
	}
}
