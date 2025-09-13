package data

#google_client_openid_userinfo: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_client_openid_userinfo")
	close({
		// The email of the account used by the provider to authenticate
		// with GCP.
		email?: string

		// The ID of this data source in Terraform state. Its value is the
		// same as the `email` attribute. Do not use this field, use the
		// `email` attribute instead.
		id?: string
	})
}
