package data

#google_service_account_access_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_service_account_access_token")
	close({
		access_token?: string
		delegates?: [...string]
		id?:       string
		lifetime?: string
		scopes!: [...string]
		target_service_account!: string
	})
}
