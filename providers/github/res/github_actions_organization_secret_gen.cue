package res

#github_actions_organization_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_actions_organization_secret")
	close({
		// Date of secret creation.
		created_at?: string
		id?:         string

		// ID of the public key used to encrypt the secret.
		key_id?: string

		// Date of secret update at the remote.
		remote_updated_at?: string

		// Name of the secret.
		secret_name!: string

		// Date of secret update.
		updated_at?: string

		// Plaintext value to be encrypted.
		value?: string

		// Value encrypted with the GitHub public key, defined by key_id,
		// in Base64 format.
		value_encrypted?: string

		// Configures the access that repositories have to the
		// organization secret. Must be one of 'all', 'private', or
		// 'selected'.
		visibility!: string
	})
}
