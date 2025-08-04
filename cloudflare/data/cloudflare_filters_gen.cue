package data

#cloudflare_filters: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_filters")
	close({
		description?: string
		expression?:  string
		result?: matchN(1, [close({
			description?: string
			expression?:  string
			id?:          string
			paused?:      bool
			ref?:         string
		}), [...close({
			description?: string
			expression?:  string
			id?:          string
			paused?:      bool
			ref?:         string
		})]])
		id?:        string
		max_items?: number
		paused?:    bool
		ref?:       string
		zone_id!:   string
	})
}
