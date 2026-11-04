package elasticstack

import "github.com/roman-mazur/cuetf"

#Terraform: cuetf.#TfJson & {
	#elasticstackPrefix:       string | *"elasticstack"
	let prefix = #elasticstackPrefix
	_#elasticstackProviderName: =~"^\(prefix)_.+"
	let providerName = _#elasticstackProviderName

	_#res: [providerName]: _
	_#ds: [providerName]:  _

	terraform: required_providers: (prefix): {
		source:  "elastic/elasticstack"
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
