package res

#github_codespaces_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_codespaces_secret")
	created_at?:      string
	encrypted_value?: string
	id?:              string
	plaintext_value?: string
	repository:       string
	secret_name:      string
	updated_at?:      string
}
