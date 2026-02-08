package res

#github_actions_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_actions_secret")
	close({
		// Date of secret creation.
		created_at?: string

		// Encrypted value of the secret using the GitHub public key in
		// Base64 format.
		encrypted_value?: string

		// ID of the public key used to encrypt the secret.
		key_id?: string
		id?:     string

		// Plaintext value of the secret to be encrypted.
		plaintext_value?: string

		// Date of secret update at the remote.
		remote_updated_at?: string

		// Name of the repository.
		repository!: string

		// ID of the repository.
		repository_id?: number

		// Name of the secret.
		secret_name!: string

		// Date of secret update.
		updated_at?: string
	})
}
