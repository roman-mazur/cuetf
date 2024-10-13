package res

#cloudflare_load_balancer_monitor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_load_balancer_monitor")
	account_id!:       string
	allow_insecure?:   bool
	consecutive_down?: number
	consecutive_up?:   number
	created_on?:       string
	description?:      string
	expected_body?:    string
	expected_codes?:   string
	follow_redirects?: bool
	id?:               string
	interval?:         number
	method?:           string
	modified_on?:      string
	path?:             string
	port?:             number
	probe_zone?:       string
	retries?:          number
	timeout?:          number
	type?:             string
	header?: #header | [...#header]

	#header: {
		header!: string
		values!: [...string]
	}
}
