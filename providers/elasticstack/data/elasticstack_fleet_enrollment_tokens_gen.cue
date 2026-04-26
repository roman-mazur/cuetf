package data

#elasticstack_fleet_enrollment_tokens: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_fleet_enrollment_tokens")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// The ID of this resource.
		id?: string

		// The identifier of the target agent policy. When provided, only
		// the enrollment tokens associated with this agent policy will
		// be selected. Omit this value to select all enrollment tokens.
		policy_id?: string

		// The Kibana space ID to query enrollment tokens from. When the
		// agent policy is space-scoped, this must be set to match the
		// policy's space. If not specified, queries the default space.
		space_id?: string

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

	#kibana_connection: close({
		// API Key to use for authentication to Kibana
		api_key?: string

		// Bearer Token to use for authentication to Kibana
		bearer_token?: string

		// A list of paths to CA certificates to validate the certificate
		// presented by the Kibana server.
		ca_certs?: [...string]

		// A comma-separated list of endpoints where the terraform
		// provider will point to, this must include the http(s) schema
		// and port number.
		endpoints?: [...string]

		// Disable TLS certificate validation
		insecure?: bool

		// Password to use for API authentication to Kibana.
		password?: string

		// Username to use for API authentication to Kibana.
		username?: string
	})
}
