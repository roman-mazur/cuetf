package data

#google_organizations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_organizations")
	close({
		filter?: string
		id?:     string
		organizations?: [...close({
			directory_customer_id?: string
			display_name?:          string
			lifecycle_state?:       string
			name?:                  string
			org_id?:                string
		})]
	})
}
