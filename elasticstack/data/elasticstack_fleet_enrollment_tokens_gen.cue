package data

#elasticstack_fleet_enrollment_tokens: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_fleet_enrollment_tokens")
	close({
		// The ID of this resource.
		id?: string

		// The identifier of the target agent policy. When provided, only
		// the enrollment tokens associated with this agent policy will
		// be selected. Omit this value to select all enrollment tokens.
		policy_id?: string

		// A list of enrollment tokens.
		tokens?: matchN(1, [close({
			// Indicates if the enrollment token is active.
			active?: bool

			// The API key.
			api_key?: string

			// The API key identifier.
			api_key_id?: string

			// The time at which the enrollment token was created.
			created_at?: string

			// The unique identifier of the enrollment token.
			key_id?: string

			// The name of the enrollment token.
			name?: string

			// The identifier of the associated agent policy.
			policy_id?: string
		}), [...close({
			// Indicates if the enrollment token is active.
			active?: bool

			// The API key.
			api_key?: string

			// The API key identifier.
			api_key_id?: string

			// The time at which the enrollment token was created.
			created_at?: string

			// The unique identifier of the enrollment token.
			key_id?: string

			// The name of the enrollment token.
			name?: string

			// The identifier of the associated agent policy.
			policy_id?: string
		})]])
	})
}
