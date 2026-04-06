package res

#cloudflare_stream_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_stream_key")
	close({
		// Identifier.
		account_id!: string

		// The date and time a signing key was created.
		created?: string

		// Identifier.
		id?: string

		// The signing key in JWK format.
		jwk?: string

		// The signing key in PEM format.
		pem?: string
	})
}
