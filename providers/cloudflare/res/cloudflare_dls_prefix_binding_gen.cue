package res

cloudflare_dls_prefix_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_dls_prefix_binding")
	close({
		// Identifier of a Cloudflare account.
		account_id!: string

		// IP prefix in CIDR notation to bind.
		cidr!: string

		// The ID of the binding.
		id?: string

		// The ID of the parent IP prefix that contains the CIDR.
		prefix_id!: string

		// Region key from managed regions (e.g., "us", "eu").
		region_key!: string
	})
}
