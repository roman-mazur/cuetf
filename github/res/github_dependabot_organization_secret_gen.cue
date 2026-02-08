package res

#github_dependabot_organization_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_dependabot_organization_secret")
	close({
		// Date of 'dependabot_secret' creation.
		created_at?: string

		// Encrypted value of the secret using the GitHub public key in
		// Base64 format.
		encrypted_value?: string

		// ID of the public key used to encrypt the secret.
		key_id?: string

		// Plaintext value of the secret to be encrypted.
		plaintext_value?: string

		// Date of secret update at the remote.
		remote_updated_at?: string
		id?:                string

		// Name of the secret.
		secret_name!: string

		// Date of 'dependabot_secret' update.
		updated_at?: string

		// Configures the access that repositories have to the
		// organization secret. Must be one of 'all', 'private' or
		// 'selected'. 'selected_repository_ids' is required if set to
		// 'selected'.
		visibility!: string
	})
}
