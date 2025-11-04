package cloudflare

import "github.com/roman-mazur/cuetf/internal/tfjson"

#Terraform: tfjson.#Schema & {
	#cloudflarePrefix:       string | *"cloudflare"
	let prefix = #cloudflarePrefix
	_#cloudflareProviderName: =~"^\(prefix)_.+"
	let providerName = _#cloudflareProviderName

	_#res: [providerName]: _
	_#ds: [providerName]:  _

	terraform: required_providers: (prefix): {
		source:  "cloudflare/cloudflare"
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
