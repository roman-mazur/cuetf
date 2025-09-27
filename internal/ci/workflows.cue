package ci

import "github.com/roman-mazur/cuetf/internal/ci/github"

#versions: {
	go:        "1.25"
	terraform: "1.5.7"
}

workflows: [N=string]: github.#Workflow & {
	name: N
	jobs: [string]: {
		"runs-on": "ubuntu-latest"

		#script?: string
		#useGit:  bool | *false

		if #script != _|_ {
			steps: [
				{
					name: "Checkout"
					uses: "actions/checkout@v4"
					if #useGit {
						with: "fetch-depth": 0
						with: token:         "${{ secrets.GENERATOR_TOKEN }}"
					}
				},

				{name: "Set up Go", uses: "actions/setup-go@v4", with: "go-version": #versions.go},

				{
					name: "Setup Terraform"
					uses: "hashicorp/setup-terraform@v3"
					with: terraform_version: #versions.terraform
				},

				{name: "Set up CUE", run: "go install cuelang.org/go/cmd/cue"},

				{name: "Execute", run: #script},
			]
		}
	}
}

#dbot: "dependabot"

(#dbot): github.#Dependabot & {version: 2}
