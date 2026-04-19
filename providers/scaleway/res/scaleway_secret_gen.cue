package res

#scaleway_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_secret")
	close({
		// Date and time of secret's creation (RFC 3339 format)
		created_at?: string

		// Description of the secret
		description?: string
		id?:          string
		ephemeral_policy?: matchN(1, [#ephemeral_policy, [...#ephemeral_policy]])

		// The secret name
		name!: string

		// Location of the secret in the directory structure.
		path?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// True if secret protection is enabled on a given secret. A
		// protected secret cannot be deleted.
		protected?: bool

		// The region you want to attach the resource to
		region?:   string
		timeouts?: #timeouts

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

	#ephemeral_policy: close({
		// Action to perform when the version of a secret expires.
		action!: string

		// True if the secret version expires after a single user access.
		expires_once_accessed?: bool

		// Time frame, from one second and up to one year, during which
		// the secret's versions are valid. Has to be specified in Go
		// Duration format
		ttl?: string
	})

	#timeouts: close({
		default?: string
	})
}
