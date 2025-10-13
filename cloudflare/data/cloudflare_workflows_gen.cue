package data

#cloudflare_workflows: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workflows")
	close({
		// The items returned by the data source
		result?: matchN(1, [close({
			class_name?:  string
			created_on?:  string
			id?:          string
			modified_on?: string
			name?:        string
			instances?: close({
				complete?:          number
				errored?:           number
				paused?:            number
				queued?:            number
				running?:           number
				terminated?:        number
				waiting?:           number
				waiting_for_pause?: number
			})
			script_name?:  string
			triggered_on?: string
		}), [...close({
			class_name?:  string
			created_on?:  string
			id?:          string
			modified_on?: string
			name?:        string
			instances?: close({
				complete?:          number
				errored?:           number
				paused?:            number
				queued?:            number
				running?:           number
				terminated?:        number
				waiting?:           number
				waiting_for_pause?: number
			})
			script_name?:  string
			triggered_on?: string
		})]])

		// Max items to fetch, default: 1000
		max_items?:  number
		account_id!: string

		// Allows filtering workflows` name.
		search?: string
	})
}
