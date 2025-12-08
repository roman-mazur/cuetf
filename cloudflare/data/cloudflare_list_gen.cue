package data

#cloudflare_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_list")
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
		kind?: string

		// The unique ID of the list.
		list_id!: string

		// The RFC 3339 timestamp of when the list was last modified.
		modified_on?: string

		// The items in the list. If set, this overwrites all items in the
		// list. Do not use with `cloudflare_list_item`.
		items?: matchN(1, [close({
			// A non-negative 32 bit integer
			asn?: number

			// An informative summary of the list item.
			comment?: string

			// Valid characters for hostnames are ASCII(7) letters from a to
			// z, the digits from 0 to 9, wildcards (*), and the hyphen (-).
			hostname?: close({
				// Only applies to wildcard hostnames (e.g., *.example.com). When
				// true (default), only subdomains are blocked. When false, both
				// the root domain and subdomains are blocked.
				exclude_exact_hostname?: bool
				url_hostname?:           string
			})

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

			// An IPv4 address, an IPv4 CIDR, an IPv6 address, or an IPv6
			// CIDR.
			ip?: string
		}), [...close({
			// A non-negative 32 bit integer
			asn?: number

			// An informative summary of the list item.
			comment?: string

			// Valid characters for hostnames are ASCII(7) letters from a to
			// z, the digits from 0 to 9, wildcards (*), and the hyphen (-).
			hostname?: close({
				// Only applies to wildcard hostnames (e.g., *.example.com). When
				// true (default), only subdomains are blocked. When false, both
				// the root domain and subdomains are blocked.
				exclude_exact_hostname?: bool
				url_hostname?:           string
			})

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

			// An IPv4 address, an IPv4 CIDR, an IPv6 address, or an IPv6
			// CIDR.
			ip?: string
		})]])

		// An informative name for the list. Use this name in filter and
		// rule expressions.
		name?: string

		// The number of items in the list.
		num_items?: number

		// The number of [filters](/api/resources/filters/) referencing
		// the list.
		num_referencing_filters?: number

		// A search query to filter returned items. Its meaning depends on
		// the list type: IP addresses must start with the provided
		// string, hostnames and bulk redirects must contain the string,
		// and ASNs must match the string exactly.
		search?: string
	})
}
