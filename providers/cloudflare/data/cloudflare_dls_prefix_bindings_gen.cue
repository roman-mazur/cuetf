package data

#cloudflare_dls_prefix_bindings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_dls_prefix_bindings")
	close({
		// Identifier of a Cloudflare account.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// The CIDR that is bound.
			cidr?: string

			// The ID of the binding.
			id?: string

			// The ID of the parent prefix.
			prefix_id?: string

			// The region key used for the binding.
			region_key?: string
		}), [...close({
			// The CIDR that is bound.
			cidr?: string

			// The ID of the binding.
			id?: string

			// The ID of the parent prefix.
			prefix_id?: string

			// The region key used for the binding.
			region_key?: string
		})]])
	})
}
