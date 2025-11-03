package aws

import "github.com/roman-mazur/cuetf/internal/tfjson"

#Terraform: tfjson.#Schema & {
	#awsPrefix:       string | *"aws"
	let prefix = #awsPrefix
	_#awsProviderName: =~"^\(prefix)_.+"
	let providerName = _#awsProviderName

	_#res: [providerName]: _
	_#ds: [providerName]:  _

	terraform?: required_providers?: (prefix): {
		source:  "hashicorp/aws"
		version: #Version
	}
	provider?: (prefix): #provider

	resource?: [type=providerName]: [name=string]: _#res[type]
	data?: [type=providerName]: [name=string]:     _#ds[type]
}
