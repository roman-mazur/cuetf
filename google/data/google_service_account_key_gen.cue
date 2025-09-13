package data

#google_service_account_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_service_account_key")
	close({
		id?:              string
		key_algorithm?:   string
		name!:            string
		public_key?:      string
		public_key_type?: string
	})
}
