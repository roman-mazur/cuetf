package google

import "github.com/roman-mazur/cuetf/internal/tfjson"

#Terraform: tfjson.#Schema & {
	#googlePrefix:       string | *"google"
	let prefix = #googlePrefix
	_#googleProviderName: =~"^\(prefix)_.+"
	let providerName = _#googleProviderName

	_#res: [providerName]: _
	_#ds: [providerName]:  _

	terraform: required_providers: (prefix): {
		source:  "hashicorp/google"
		version: #Version
	}

	_#profiderDef: {
		alias?: string
		#provider
	}
	provider: (prefix): *_#profiderDef | [_#profiderDef, ..._#profiderDef]

	resource?: [type=providerName]: [name=string]: _#res[type]
	data?: [type=providerName]: [name=string]:     _#ds[type]
}
