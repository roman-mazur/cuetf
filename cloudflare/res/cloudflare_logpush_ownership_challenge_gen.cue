package res

#cloudflare_logpush_ownership_challenge: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_logpush_ownership_challenge")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// Uniquely identifies a resource (such as an s3 bucket) where
		// data. will be pushed. Additional configuration parameters
		// supported by the destination may be included.
		destination_conf!: string
		filename?:         string
		message?:          string
		valid?:            bool

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string
	})
}
