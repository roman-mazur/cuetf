package res

#github_actions_organization_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_actions_organization_secret")
	close({
		// Date of 'actions_secret' creation.
		created_at?: string

		// Boolean indicating whether to recreate the secret if it's
		// modified outside of Terraform. When `true` (default),
		// Terraform will delete and recreate the secret if it detects
		// external changes. When `false`, Terraform will acknowledge
		// external changes but not recreate the secret.
		destroy_on_drift?: bool

		// Encrypted value of the secret using the GitHub public key in
		// Base64 format.
		encrypted_value?: string

		// Plaintext value of the secret to be encrypted.
		plaintext_value?: string

		// Name of the secret.
		secret_name!: string
		id?:          string

		// An array of repository ids that can access the organization
		// secret.
		selected_repository_ids?: [...number]

		// Date of 'actions_secret' update.
		updated_at?: string

		// Configures the access that repositories have to the
		// organization secret. Must be one of 'all', 'private', or
		// 'selected'. 'selected_repository_ids' is required if set to
		// 'selected'.
		visibility!: string
	})
}
