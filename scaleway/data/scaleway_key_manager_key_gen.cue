package data

#scaleway_key_manager_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_key_manager_key")
	close({
		// Algorithm to use for the key. The valid algorithms depend on
		// the usage type.
		algorithm?: string

		// Key creation date.
		created_at?: string

		// Description of the key.
		description?: string

		// ID of the key.
		id?: string

		// The ID of the key
		key_id!: string

		// Returns true if the key is locked.
		locked?: bool

		// Name of the key.
		name?: string

		// Origin of the key material. Possible values: scaleway_kms (Key
		// Manager generates the key material), external (key material
		// comes from an external source).
		origin?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// Returns true if key protection is applied to the key.
		protected?: bool

		// The region you want to attach the resource to
		region?: string

		// Key last rotation date.
		rotated_at?: string

		// The rotation count tracks the number of times the key has been
		// rotated.
		rotation_count?: number

		// Key rotation policy.
		rotation_policy?: [...close({
			next_rotation_at?: string
			rotation_period?:  string
		})]

		// State of the key. See the Key.State enum for possible values.
		state?: string

		// List of the key's tags.
		tags?: [...string]

		// If true, the key is not protected against deletion.
		unprotected?: bool

		// Key last modification date.
		updated_at?: string

		// Key usage type. Possible values: symmetric_encryption,
		// asymmetric_encryption, asymmetric_signing.
		usage?: string
	})
}
