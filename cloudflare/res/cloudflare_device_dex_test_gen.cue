package res

import "list"

#cloudflare_device_dex_test: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_device_dex_test")
	account_id:  string
	created?:    string
	description: string
	enabled:     bool
	id?:         string
	interval:    string
	name:        string
	updated?:    string
	data?:       #data | list.MaxItems(1) & [_, ...] & [...#data]

	#data: {
		host:    string
		kind:    string
		method?: string
	}
}
