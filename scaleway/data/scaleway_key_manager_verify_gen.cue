package data

#scaleway_key_manager_verify: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_key_manager_verify")
	close({
		// Digest of the original signed message. Must be generated using
		// the same algorithm specified in the key’s configuration, and
		// encoded as a base64 string.
		digest!: string
		id?:     string

		// ID of the key to use for signature verification. Can be a plain
		// UUID or a regional ID.
		key_id!: string

		// Region of the key. If not set, the region is derived from the
		// key_id when possible or from the provider configuration.
		region?: string

		// The message signature to verify, encoded as a base64 string.
		signature!: string

		// Defines whether the signature is valid. Returns `true` if the
		// signature is valid for the digest and key, and `false`
		// otherwise.
		valid?: bool
	})
}
