package data

#cloudflare_load_balancer_monitors: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_load_balancer_monitors")
	close({
		account_id!: string
		max_items?:  number
		result?: matchN(1, [close({
			allow_insecure?:   bool
			consecutive_down?: number
			consecutive_up?:   number
			created_on?:       string
			description?:      string
			expected_body?:    string
			expected_codes?:   string
			follow_redirects?: bool
			header?: [string]: [...string]
			id?:          string
			interval?:    number
			method?:      string
			modified_on?: string
			path?:        string
			port?:        number
			probe_zone?:  string
			retries?:     number
			timeout?:     number
			type?:        string
		}), [...close({
			allow_insecure?:   bool
			consecutive_down?: number
			consecutive_up?:   number
			created_on?:       string
			description?:      string
			expected_body?:    string
			expected_codes?:   string
			follow_redirects?: bool
			header?: [string]: [...string]
			id?:          string
			interval?:    number
			method?:      string
			modified_on?: string
			path?:        string
			port?:        number
			probe_zone?:  string
			retries?:     number
			timeout?:     number
			type?:        string
		})]])
	})
}
