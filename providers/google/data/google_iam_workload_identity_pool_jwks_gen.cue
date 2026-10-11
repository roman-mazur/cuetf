package data

google_iam_workload_identity_pool_jwks: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_iam_workload_identity_pool_jwks")
	close({
		timeouts?: #timeouts
		id?:       string

		// The raw JSON string representation of the JWKS response.
		jwks_json?: string

		// The list of public keys in the JSON Web Key Set.
		keys?: [...close({
			alg?: string
			e?:   string
			kid?: string
			kty?: string
			n?:   string
			use?: string
		})]

		// The JWKS URI to retrieve the public keys from (e.g. from
		// google_iam_workload_identity_pool_openid_config.jwks_uri).
		resource_name!: string
	})

	#timeouts: close({
		read?: string
	})
}
