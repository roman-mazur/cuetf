package res

import "list"

#cloudflare_rate_limit: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_rate_limit")
	bypass_url_patterns?: [...string]
	description?: string
	disabled?:    bool
	id?:          string
	period!:      number
	threshold!:   number
	zone_id!:     string
	action?: #action | list.MaxItems(1) & [_, ...] & [...#action]
	correlate?: #correlate | list.MaxItems(1) & [...#correlate]
	match?: #match | list.MaxItems(1) & [...#match]

	#action: {
		mode!:    string
		timeout?: number
		response?: #action.#response | list.MaxItems(1) & [...#action.#response]

		#response: {
			body!:         string
			content_type!: string
		}
	}

	#correlate: by?: string

	#match: {
		request?: #match.#request | list.MaxItems(1) & [...#match.#request]
		response?: #match.#response | list.MaxItems(1) & [...#match.#response]

		#request: {
			methods?: [...string]
			schemes?: [...string]
			url_pattern?: string
		}

		#response: {
			headers?: [...{
				[string]: string
			}]
			origin_traffic?: bool
			statuses?: [...number]
		}
	}
}
