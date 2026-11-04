package aws

import "github.com/roman-mazur/cuetf"

#Terraform: cuetf.#TfJson & {
	#awsPrefix:       string | *"aws"
	let prefix = #awsPrefix
	_#awsProviderName: =~"^\(prefix)_.+"
	let providerName = _#awsProviderName

	_#res: [providerName]: _
	_#ds: [providerName]:  _

	terraform: required_providers: (prefix): {
		source:  "hashicorp/aws"
		version: #Version

		// Aliases for additional provider configurations, such as "aws.eu".
		configuration_aliases?: [string, ...string]
	}

	_#profiderDef: {
		alias?: string
		_#providerSchema
	}
	provider: (prefix): *_#profiderDef | [_#profiderDef, ..._#profiderDef]

	resource?: [type=providerName]: [name=string]: _#res[type]
	data?: [type=providerName]: [name=string]:     _#ds[type]
}

_#providerSchema: provider
