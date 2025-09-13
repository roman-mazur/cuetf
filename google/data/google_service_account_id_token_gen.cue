package data

#google_service_account_id_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_service_account_id_token")
	close({
		delegates?: [...string]
		id?:                     string
		id_token?:               string
		include_email?:          bool
		target_audience!:        string
		target_service_account?: string
	})
}
