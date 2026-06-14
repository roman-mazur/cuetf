package data

#cloudflare_dls_prefix_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_dls_prefix_binding")
	close({
		// Identifier of a Cloudflare account.
		account_id!: string

		// Unique identifier for the prefix binding.
		binding_id!: string

		// The CIDR that is bound.
		cidr?: string

		// Unique identifier for the prefix binding.
		id?: string

		// The ID of the parent prefix.
		prefix_id?: string

		// The region key used for the binding.
		region_key?: string
	})
}
