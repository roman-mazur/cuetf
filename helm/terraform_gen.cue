package helm

import "github.com/roman-mazur/cuetf/internal/tfjson"

#Terraform: tfjson.#Schema & {
	#helmPrefix:       string | *"helm"
	let prefix = #helmPrefix
	_#helmProviderName: =~"^\(prefix)_.+"
	let providerName = _#helmProviderName

	_#res: [providerName]: _
	_#ds: [providerName]:  _

	terraform?: required_providers?: (prefix): {
		source:  "hashicorp/helm"
		version: #Version
	}
	provider?: (prefix): #provider

	resource?: [type=providerName]: [name=string]: _#res[type]
	data?: [type=providerName]: [name=string]:     _#ds[type]
}
