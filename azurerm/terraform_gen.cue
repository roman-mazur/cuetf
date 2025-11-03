package azurerm

import "github.com/roman-mazur/cuetf/internal/tfjson"

#Terraform: tfjson.#Schema & {
	#azurermPrefix:       string | *"azurerm"
	let prefix = #azurermPrefix
	_#azurermProviderName: =~"^\(prefix)_.+"
	let providerName = _#azurermProviderName

	_#res: [providerName]: _
	_#ds: [providerName]:  _

	terraform?: required_providers?: (prefix): {
		source:  "hashicorp/azurerm"
		version: #Version
	}
	provider?: (prefix): #provider

	resource?: [type=providerName]: [name=string]: _#res[type]
	data?: [type=providerName]: [name=string]:     _#ds[type]
}
