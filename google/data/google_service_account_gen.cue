package data

#google_service_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_service_account")
	close({
		account_id!:   string
		disabled?:     bool
		display_name?: string
		email?:        string
		id?:           string
		member?:       string
		name?:         string
		project?:      string
		unique_id?:    string
	})
}
