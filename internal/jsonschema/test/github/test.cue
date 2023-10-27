package github

import (
	"rmazur.io/cuetf/github/internal/schema"
	"rmazur.io/cuetf/internal/jsonschema"
)

_github: schema.provider_schemas["registry.terraform.io/integrations/github"].data_source_schemas

jsonschema.#ProviderTest

importSamples: github: [name=string]: {
	#name: name
	#block: _github[name].block
}
//importSamples: github: github_repository: _

examplesCode: """
	package samples
	
	test: "ok"
	"""
