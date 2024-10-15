package res

import "list"

#cloudflare_api_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_api_token")
	expires_on?:  string
	id?:          string
	issued_on?:   string
	modified_on?: string
	name!:        string
	not_before?:  string
	status?:      string
	value?:       string
	condition?: #condition | list.MaxItems(1) & [...#condition]
	policy?: #policy | [_, ...] & [...#policy]

	#condition: {
		request_ip?: #condition.#request_ip | list.MaxItems(1) & [...#condition.#request_ip]

		#request_ip: {
			in?: [...string]
			not_in?: [...string]
		}
	}

	#policy: {
		effect?: string
		permission_groups!: [...string]
		resources!: [string]: string
	}
}
