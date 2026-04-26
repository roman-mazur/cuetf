package res

#github_dependabot_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_dependabot_secret")
	close({
		// Date of secret creation.
		created_at?: string
		id?:         string

		// ID of the public key used to encrypt the secret.
		key_id?: string

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

		// Plaintext value to be encrypted.
		value?: string

		// Value encrypted with the GitHub public key, defined by key_id,
		// in Base64 format.
		value_encrypted?: string
	})
}
