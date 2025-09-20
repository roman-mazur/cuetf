package data

#cloudflare_list_item: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_list_item")
	close({
		// The Account ID for this resource.
		account_id!: string

		// Defines a non-negative 32 bit integer.
		asn?: number

		// Valid characters for hostnames are ASCII(7) letters from a to
		// z, the digits from 0 to 9, wildcards (*), and the hyphen (-).
		hostname?: close({
			// Only applies to wildcard hostnames (e.g., *.example.com). When
			// true (default), only subdomains are blocked. When false, both
			// the root domain and subdomains are blocked.
			exclude_exact_hostname?: bool
			url_hostname?:           string
		})

		// Defines an informative summary of the list item.
		comment?: string

		// The RFC 3339 timestamp of when the list was created.
		created_on?: string

		// Defines the unique ID of the item in the List.
		id?: string

		// An IPv4 address, an IPv4 CIDR, an IPv6 address, or an IPv6
		// CIDR.
		ip?: string

		// Defines the unique ID of the item in the List.
		item_id!: string

		// The unique ID of the list.
		list_id!: string

		// The RFC 3339 timestamp of when the list was last modified.
		modified_on?: string

		// The definition of the redirect.
		redirect?: close({
			include_subdomains?:    bool
			preserve_path_suffix?:  bool
			preserve_query_string?: bool

			// Available values: 301, 302, 307, 308.
			status_code?:      number
			source_url?:       string
			subpath_matching?: bool
			target_url?:       string
		})
	})
}
