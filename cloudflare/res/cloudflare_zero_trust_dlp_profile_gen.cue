package res

import "list"

#cloudflare_zero_trust_dlp_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_dlp_profile")
	account_id!:          string
	allowed_match_count!: number
	description?:         string
	id?:                  string
	name!:                string
	ocr_enabled?:         bool
	type!:                string
	context_awareness?: #context_awareness | list.MaxItems(1) & [...#context_awareness]
	entry?: #entry | [_, ...] & [...#entry]

	#context_awareness: {
		enabled!: bool
		skip?: #context_awareness.#skip | list.MaxItems(1) & [_, ...] & [...#context_awareness.#skip]

		#skip: files!: bool
	}

	#entry: {
		enabled?: bool
		id?:      string
		name!:    string
		pattern?: #entry.#pattern | list.MaxItems(1) & [...#entry.#pattern]

		#pattern: {
			regex!:      string
			validation?: string
		}
	}
}
