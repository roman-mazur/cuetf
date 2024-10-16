package res

#github_actions_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_actions_secret")
	created_at?:      string
	encrypted_value?: string
	id?:              string
	plaintext_value?: string
	repository!:      string
	secret_name!:     string
	updated_at?:      string
}
