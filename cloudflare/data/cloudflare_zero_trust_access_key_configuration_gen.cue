package data

#cloudflare_zero_trust_access_key_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_key_configuration")
	close({
		// Identifier.
		account_id!: string

		// The number of days until the next key rotation.
		days_until_next_rotation?: number

		// Identifier.
		id?: string

		// The number of days between key rotations.
		key_rotation_interval_days?: number

		// The timestamp of the previous key rotation.
		last_key_rotation_at?: string
	})
}
