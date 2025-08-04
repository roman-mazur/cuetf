package res

#github_codespaces_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_codespaces_secret")
	close({
		// Date of 'codespaces_secret' creation.
		created_at?: string

		// Encrypted value of the secret using the GitHub public key in
		// Base64 format.
		encrypted_value?: string

		// Plaintext value of the secret to be encrypted.
		plaintext_value?: string
		id?:              string

		// Name of the repository.
		repository!: string

		// Name of the secret.
		secret_name!: string

		// Date of 'codespaces_secret' update.
		updated_at?: string
	})
}
