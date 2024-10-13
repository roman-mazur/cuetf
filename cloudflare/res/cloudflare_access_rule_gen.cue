package res

import "list"

#cloudflare_access_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_access_rule")
	account_id?: string
	id?:         string
	mode!:       string
	notes?:      string
	zone_id?:    string
	configuration?: #configuration | list.MaxItems(1) & [_, ...] & [...#configuration]

	#configuration: {
		target!: string
		value!:  string
	}
}
