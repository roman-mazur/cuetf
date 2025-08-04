package github

import "list"

#provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/provider")
	close({
		base_url?:          string
		insecure?:          bool
		max_retries?:       number
		owner?:             string
		parallel_requests?: bool
		read_delay_ms?:     number
		retry_delay_ms?:    number
		app_auth?: matchN(1, [#app_auth, list.MaxItems(1) & [...#app_auth]])
		retryable_errors?: [...number]
		token?:          string
		write_delay_ms?: number
	})

	#app_auth: close({
		id!:              string
		installation_id!: string
		pem_file!:        string
	})
}
