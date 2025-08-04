package res

#cloudflare_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_list")
	close({
		// The Account ID for this resource.
		account_id!: string

		// The RFC 3339 timestamp of when the list was created.
		created_on?: string

		// An informative summary of the list.
		description?: string

		// The unique ID of the list.
		id?: string

		// The type of the list. Each type supports specific list items
		// (IP addresses, ASNs, hostnames or redirects).
		// Available values: "ip", "redirect", "hostname", "asn".
		kind!: string

		// The RFC 3339 timestamp of when the list was last modified.
		modified_on?: string

		// An informative name for the list. Use this name in filter and
		// rule expressions.
		name!: string

		// The number of items in the list.
		num_items?: number

		// The number of [filters](/api/resources/filters/) referencing
		// the list.
		num_referencing_filters?: number
	})
}
