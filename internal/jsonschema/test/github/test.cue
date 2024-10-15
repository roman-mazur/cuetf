package github

import (
	"github.com/roman-mazur/cuetf/github/internal/schema"
	"github.com/roman-mazur/cuetf/internal/jsonschema"
)

_github: schema.provider_schemas["registry.terraform.io/integrations/github"].resource_schemas

jsonschema.#ProviderTest

importSamples: github: [name=string]: {
	#name:  name
	#block: _github[name].block
}
importSamples: github: github_issue: _

exampleCode: """
	package samples
	
	github_issue: #github_issue & {
		repository: "test"
		title: "sample"
	}
	"""
