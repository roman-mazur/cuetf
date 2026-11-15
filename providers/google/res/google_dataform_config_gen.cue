package res

google_dataform_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataform_config")
	close({
		timeouts?: #timeouts

		// Optional. A reference to the customer-managed encryption key (CMEK) that will
		// be used by default to encrypt user data.
		default_kms_key_name?: string
		id?:                   string

		// A reference to the region
		region!:  string
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
