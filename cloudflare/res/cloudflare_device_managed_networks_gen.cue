package res

import "list"

#cloudflare_device_managed_networks: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_device_managed_networks")
	account_id!: string
	id?:         string
	name!:       string
	type!:       string
	config?: #config | list.MaxItems(1) & [_, ...] & [...#config]

	#config: {
		sha256!:       string
		tls_sockaddr!: string
	}
}
