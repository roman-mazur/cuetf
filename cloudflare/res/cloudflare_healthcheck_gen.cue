package res

#cloudflare_healthcheck: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_healthcheck")
	address!:        string
	allow_insecure?: bool
	check_regions?: [...string]
	consecutive_fails?:     number
	consecutive_successes?: number
	created_on?:            string
	description?:           string
	expected_body?:         string
	expected_codes?: [...string]
	follow_redirects?: bool
	id?:               string
	interval?:         number
	method?:           string
	modified_on?:      string
	name!:             string
	path?:             string
	port?:             number
	retries?:          number
	suspended?:        bool
	timeout?:          number
	type!:             string
	zone_id!:          string
	header?: #header | [...#header]
	timeouts?: #timeouts

	#header: {
		header!: string
		values!: [...string]
	}

	#timeouts: create?: string
}
