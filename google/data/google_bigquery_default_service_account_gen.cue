package data

#google_bigquery_default_service_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_bigquery_default_service_account")
	close({
		email?:   string
		id?:      string
		member?:  string
		project?: string
	})
}
