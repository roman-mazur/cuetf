package data

#google_organization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_organization")
	close({
		create_time?:           string
		directory_customer_id?: string
		domain?:                string
		id?:                    string
		lifecycle_state?:       string
		name?:                  string
		org_id?:                string
		organization?:          string
	})
}
