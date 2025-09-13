package data

#google_compute_default_service_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_default_service_account")
	close({
		display_name?: string
		email?:        string
		id?:           string
		member?:       string
		name?:         string
		project?:      string
		unique_id?:    string
	})
}
