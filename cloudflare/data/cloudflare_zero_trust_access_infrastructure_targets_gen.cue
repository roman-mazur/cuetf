package data

#cloudflare_zero_trust_access_infrastructure_targets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_access_infrastructure_targets")
	close({
		// Account identifier
		account_id!: string

		// Date and time at which the target was created after (inclusive)
		created_after?: string

		// Date and time at which the target was created before
		// (inclusive)
		created_before?: string

		// The sorting direction.
		// Available values: "asc", "desc".
		direction?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// The IPv4/IPv6 address that identifies where to reach a target
			ip?: close({
				// The target's IPv4 address
				ipv4?: close({
					// IP address of the target
					ip_addr?: string

					// (optional) Private virtual network identifier for the target.
					// If omitted, the default virtual network ID will be used.
					virtual_network_id?: string
				})

				// The target's IPv6 address
				ipv6?: close({
					// IP address of the target
					ip_addr?: string

					// (optional) Private virtual network identifier for the target.
					// If omitted, the default virtual network ID will be used.
					virtual_network_id?: string
				})
			})

			// Date and time at which the target was created
			created_at?: string

			// A non-unique field that refers to a target
			hostname?: string

			// Target identifier
			id?: string

			// Date and time at which the target was modified
			modified_at?: string
		}), [...close({
			// The IPv4/IPv6 address that identifies where to reach a target
			ip?: close({
				// The target's IPv4 address
				ipv4?: close({
					// IP address of the target
					ip_addr?: string

					// (optional) Private virtual network identifier for the target.
					// If omitted, the default virtual network ID will be used.
					virtual_network_id?: string
				})

				// The target's IPv6 address
				ipv6?: close({
					// IP address of the target
					ip_addr?: string

					// (optional) Private virtual network identifier for the target.
					// If omitted, the default virtual network ID will be used.
					virtual_network_id?: string
				})
			})

			// Date and time at which the target was created
			created_at?: string

			// A non-unique field that refers to a target
			hostname?: string

			// Target identifier
			id?: string

			// Date and time at which the target was modified
			modified_at?: string
		})]])

		// Hostname of a target
		hostname?: string

		// Partial match to the hostname of a target
		hostname_contains?: string

		// Filters for targets whose IP addresses look like the specified
		// string.
		// Supports `*` as a wildcard character
		ip_like?: string

		// IPv4 address of the target
		ip_v4?: string

		// IPv6 address of the target
		ip_v6?: string

		// Filters for targets that have any of the following IP
		// addresses. Specify
		// `ips` multiple times in query parameter to build list of
		// candidates.
		ips?: [...string]

		// Defines an IPv4 filter range's ending value (inclusive).
		// Requires
		// `ipv4_start` to be specified as well.
		ipv4_end?: string

		// Defines an IPv4 filter range's starting value (inclusive).
		// Requires
		// `ipv4_end` to be specified as well.
		ipv4_start?: string

		// Defines an IPv6 filter range's ending value (inclusive).
		// Requires
		// `ipv6_start` to be specified as well.
		ipv6_end?: string

		// Defines an IPv6 filter range's starting value (inclusive).
		// Requires
		// `ipv6_end` to be specified as well.
		ipv6_start?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Date and time at which the target was modified after
		// (inclusive)
		modified_after?: string

		// Date and time at which the target was modified before
		// (inclusive)
		modified_before?: string

		// The field to sort by.
		// Available values: "hostname", "created_at".
		order?: string

		// Filters for targets that have any of the following UUIDs.
		// Specify
		// `target_ids` multiple times in query parameter to build list of
		// candidates.
		target_ids?: [...string]

		// Private virtual network identifier of the target
		virtual_network_id?: string
	})
}
