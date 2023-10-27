package res

import "list"

#cloudflare_dlp_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_dlp_profile")
	account_id:          string
	allowed_match_count: number
	description?:        string
	id?:                 string
	name:                string
	type:                string
	entry?:              #entry | [_, ...] & [...#entry]

	#entry: {
		enabled?: bool
		id?:      string
		name:     string
		pattern?: #entry.#pattern | list.MaxItems(1) & [...#entry.#pattern]

		#pattern: {
			regex:       string
			validation?: string
		}
	}
}
