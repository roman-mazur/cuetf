package elasticstack

import "github.com/roman-mazur/cuetf/internal/tfjson"

#Terraform: tfjson.#Schema & {
	#elasticstackPrefix:       string | *"elasticstack"
	let prefix = #elasticstackPrefix
	_#elasticstackProviderName: =~"^\(prefix)_.+"
	let providerName = _#elasticstackProviderName

	_#res: [providerName]: _
	_#ds: [providerName]:  _

	terraform: required_providers: (prefix): {
		source:  "elastic/elasticstack"
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
