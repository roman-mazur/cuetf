package data

import "list"

#cloudflare_zones: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_zones")
	id?: string
	zones?: [...{
		id?:   string
		name?: string
	}]
	filter?: #filter | list.MaxItems(1) & [_, ...] & [...#filter]

	#filter: {
		account_id?:  string
		lookup_type?: string
		match?:       string
		name?:        string
		paused?:      bool
		status?:      string
	}
}
