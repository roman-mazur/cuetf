package ci

import (
	"cue.dev/x/githubactions"

	"github.com/roman-mazur/cuetf/internal/ci/github"
)

#versions: {
	go:        "1.26"
	terraform: "1.14.6"
}

workflows: [N=string]: githubactions.#Workflow & {
	name: N
	jobs: [string]: {
		"runs-on": "ubuntu-latest"

		#script?: string
		#scriptEnv?: [string]: string
		#useGit: bool | *false

		if #script != _|_ {
			steps: [
				#steps.#checkout & {#prepareForGitUse: #useGit},
				#steps.#installGo,

				{name: "Setup Terraform", uses: "hashicorp/setup-terraform@v3", with: terraform_version: #versions.terraform},

				#steps.#installCue,

				{
					name: "Execute"
					run:  #script
					if #scriptEnv != _|_ {
						env: #scriptEnv
					}
				},
			]
		}
	}
}

#dbot: "dependabot"

(#dbot): github.#Dependabot & {version: 2}

_scriptPrepareForGitPush: """
	git config user.name "cuetf generator (bot)"
	git config user.email "cuetf-bot@rmazur.io"
	branch=${GITHUB_HEAD_REF:-${GITHUB_REF#refs/heads/}}
	git checkout "origin/$branch"
	"""

#steps: {
	#checkout: {
		#prepareForGitUse: bool | *false

		name: "Checkout"
		uses: "actions/checkout@v6"

		if #prepareForGitUse {
			with: "fetch-depth": 0
			with: token:         "${{ secrets.GENERATOR_TOKEN }}"
		}
	}

	#installGo: {
		name: "Set up Go"
		uses: "actions/setup-go@v6"
		with: "go-version": #versions.go
	}

	#installCue: {
		name: "Set up CUE"
		run:  "go install cuelang.org/go/cmd/cue"
	}
}
