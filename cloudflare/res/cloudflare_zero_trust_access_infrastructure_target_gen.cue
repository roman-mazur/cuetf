package res

#cloudflare_zero_trust_access_infrastructure_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_access_infrastructure_target")
	close({
		// Account identifier
		account_id!: string

		// The IPv4/IPv6 address that identifies where to reach a target
		ip!: close({
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

		// A non-unique field that refers to a target. Case insensitive,
		// maximum
		// length of 255 characters, supports the use of special
		// characters dash
		// and period, does not support spaces, and must start and end
		// with an
		// alphanumeric character.
		hostname!: string

		// Target identifier
		id?: string

		// Date and time at which the target was modified
		modified_at?: string
	})
}
