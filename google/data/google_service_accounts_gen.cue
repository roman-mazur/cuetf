package data

#google_service_accounts: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_service_accounts")
	close({
		accounts?: [...close({
			account_id?:   string
			disabled?:     bool
			display_name?: string
			email?:        string
			member?:       string
			name?:         string
			unique_id?:    string
		})]
		id?:      string
		prefix?:  string
		project?: string
		regex?:   string
	})
}
