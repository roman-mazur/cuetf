package res

#cloudflare_healthcheck: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_healthcheck")
	close({
		address!: string
		check_regions?: [...string]
		consecutive_fails?:     number
		consecutive_successes?: number
		created_on?:            string
		http_config?: close({
			allow_insecure?: bool
			expected_body?:  string
			expected_codes?: [...string]
			follow_redirects?: bool
			header?: [string]: [...string]
			method?: string
			path?:   string
			port?:   number
		})
		description?:    string
		failure_reason?: string
		id?:             string
		interval?:       number
		modified_on?:    string
		name!:           string
		retries?:        number
		status?:         string
		tcp_config?: close({
			method?: string
			port?:   number
		})
		suspended?: bool
		timeout?:   number
		type?:      string
		zone_id!:   string
	})
}
