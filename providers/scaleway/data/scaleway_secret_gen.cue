package data

#scaleway_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_secret")
	close({
		// Date and time of secret's creation (RFC 3339 format)
		created_at?: string

		// Description of the secret
		description?: string

		// Ephemeral policy of the secret. Policy that defines
		// whether/when a secret's versions expire. By default, the
		// policy is applied to all the secret's versions.
		ephemeral_policy?: [...close({
			action?:                string
			expires_once_accessed?: bool
			ttl?:                   string
		})]
		id?: string

		// The secret name
		name?: string

		// ID of organization the resource is associated to.
		organization_id?: string

		// Location of the secret in the directory structure.
		path?: string

		// The project ID the resource is associated to
		project_id?: string

		// True if secret protection is enabled on a given secret. A
		// protected secret cannot be deleted.
		protected?: bool

		// The region you want to attach the resource to
		region?: string

		// The ID of the secret
		secret_id?: string

		// Status of the secret
		status?: string

		// List of tags ["tag1", "tag2", ...] associated to secret
		tags?: [...string]

		// Type of the secret could be any value among: [unknown_type
		// opaque certificate key_value basic_credentials
		// database_credentials ssh_key]
		type?: string

		// Date and time of secret's creation (RFC 3339 format)
		updated_at?: string

		// The number of versions for this Secret
		version_count?: number

		// List of the versions of the secret
		versions?: [...close({
			created_at?:  string
			description?: string
			latest?:      bool
			revision?:    string
			secret_id?:   string
			status?:      string
			updated_at?:  string
		})]
	})
}
