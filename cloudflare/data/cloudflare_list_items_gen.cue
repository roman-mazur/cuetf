package data

#cloudflare_list_items: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_list_items")
	close({
		// The Account ID for this resource.
		account_id!: string

		// The items returned by the data source
		result?: matchN(1, [close({}), [...close({})]])

		// The unique ID of the list.
		list_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// A search query to filter returned items. Its meaning depends on
		// the list type: IP addresses must start with the provided
		// string, hostnames and bulk redirects must contain the string,
		// and ASNs must match the string exactly.
		search?: string
	})
}
