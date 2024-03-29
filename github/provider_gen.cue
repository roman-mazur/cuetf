package github

import "list"

#provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/provider")
	base_url?:          string
	insecure?:          bool
	owner?:             string
	parallel_requests?: bool
	read_delay_ms?:     number
	token?:             string
	write_delay_ms?:    number
	app_auth?:          #app_auth | list.MaxItems(1) & [...#app_auth]

	#app_auth: {
		id:              string
		installation_id: string
		pem_file:        string
	}
}
