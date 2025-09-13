package data

#google_billing_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_billing_account")
	close({
		billing_account?: string
		currency_code?:   string
		display_name?:    string
		id?:              string
		lookup_projects?: bool
		name?:            string
		open?:            bool
		project_ids?: [...string]
	})
}
