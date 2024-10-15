package res

#github_codespaces_user_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_codespaces_user_secret")
	created_at?:      string
	encrypted_value?: string
	id?:              string
	plaintext_value?: string
	secret_name!:     string
	selected_repository_ids?: [...number]
	updated_at?: string
}
