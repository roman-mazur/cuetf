package data

google_iam_workload_identity_pool_openid_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_iam_workload_identity_pool_openid_config")
	close({
		// URL pointing to an authorization endpoint under this issuer.
		authorization_endpoint?: string
		id?:                     string

		// JSON array containing a list of the JWS signing algorithms (alg values)
		// supported by the OP for the ID token to encode the claims in a JWT [JWT].
		id_token_signing_alg_values_supported?: [...string]

		// URL using the https scheme with no query or fragment components that the OP
		// asserts as its issuer identifier.
		issuer?: string

		// URL of the OP's JWK Set [JWK] document, which MUST use the https scheme.
		jwks_uri?: string

		// The OIDC discovery URI.
		resource_name!: string

		// JSON array containing a list of the OAuth 2.0 response_type values that this OP supports.
		response_types_supported?: [...string]

		// JSON array containing a list of the subject identifier types that this OP supports.
		subject_types_supported?: [...string]

		// URL pointing to a token endpoint under this issuer.
		token_endpoint?: string
	})
}
