package ci

import "github.com/roman-mazur/cuetf/internal/ci/github"

#versions: {
	go: "1.25"
}

workflows: [N=string]: github.#Workflow & {
	name: N
	jobs: [string]: "runs-on": "ubuntu-latest"
}

#dbot: "dependabot"

(#dbot): github.#Dependabot & {version: 2}
