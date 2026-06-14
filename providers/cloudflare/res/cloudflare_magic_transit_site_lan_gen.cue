package res

#cloudflare_magic_transit_site_lan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_magic_transit_site_lan")
	close({
		// Identifier
		account_id!: string
		bond_id?:    number

		// mark true to use this LAN for HA probing. only works for site
		// with HA turned on. only one LAN can be set as the ha_link.
		ha_link?: bool

		// Identifier
		id?: string

		// mark true to use this LAN for source-based breakout traffic
		is_breakout?: bool

		// mark true to use this LAN for source-based prioritized traffic
		is_prioritized?: bool
		name?:           string
		physport?:       number

		// Identifier
		site_id!: string

		// VLAN ID. Use zero for untagged.
		vlan_tag?: number

		// If the site is not configured in high availability mode, this
		// configuration is optional (if omitted, use DHCP). However, if
		// in high availability mode, static_address is required along
		// with secondary and virtual address.
		static_addressing?: close({
			// A valid CIDR notation representing an IP range.
			address!: string

			// A valid CIDR notation representing an IP range.
			secondary_address?: string

			// A valid CIDR notation representing an IP range.
			virtual_address?: string
			dhcp_relay?: close({
				// List of DHCP server IPs.
				server_addresses?: [...string]
			})
			dhcp_server?: close({
				// Optional list of custom DHCP options to include in DHCP
				// responses. Only valid when DHCP server is enabled.
				dhcp_options?: matchN(1, [close({
					// DHCP option number (1-254). Options 0 and 255 are reserved by
					// RFC 2132. Options 3, 6, and 51 are not allowed because they
					// conflict with connector-managed configuration.
					code!: number

					// The type of the option value. text: a string (max 255 bytes).
					// hex: colon-separated hex bytes (e.g. "01:04:aa:bb:cc", max 255
					// bytes). ip: an IPv4 address (e.g. "10.20.30.40"). byte: an
					// unsigned integer 0-255 (1 byte). short: an unsigned integer
					// 0-65535 (2 bytes). integer: an unsigned integer 0-4294967295
					// (4 bytes).
					// Available values: "text", "hex", "ip", "byte", "short",
					// "integer".
					type!: string

					// The option value, interpreted according to the type field.
					value!: string
				}), [...close({
					// DHCP option number (1-254). Options 0 and 255 are reserved by
					// RFC 2132. Options 3, 6, and 51 are not allowed because they
					// conflict with connector-managed configuration.
					code!: number

					// The type of the option value. text: a string (max 255 bytes).
					// hex: colon-separated hex bytes (e.g. "01:04:aa:bb:cc", max 255
					// bytes). ip: an IPv4 address (e.g. "10.20.30.40"). byte: an
					// unsigned integer 0-255 (1 byte). short: an unsigned integer
					// 0-65535 (2 bytes). integer: an unsigned integer 0-4294967295
					// (4 bytes).
					// Available values: "text", "hex", "ip", "byte", "short",
					// "integer".
					type!: string

					// The option value, interpreted according to the type field.
					value!: string
				})]])

				// A valid IPv4 address.
				dhcp_pool_end?: string

				// A valid IPv4 address.
				dhcp_pool_start?: string

				// A valid IPv4 address.
				dns_server?: string

				// Mapping of MAC addresses to IP addresses
				reservations?: [string]: string
				dns_servers?: [...string]
			})
		})
		nat?: close({
			// A valid CIDR notation representing an IP range.
			static_prefix?: string
		})
		routed_subnets?: matchN(1, [close({
			nat?: close({
				// A valid CIDR notation representing an IP range.
				static_prefix?: string
			})

			// A valid IPv4 address.
			next_hop!: string

			// A valid CIDR notation representing an IP range.
			prefix!: string
		}), [...close({
			nat?: close({
				// A valid CIDR notation representing an IP range.
				static_prefix?: string
			})

			// A valid IPv4 address.
			next_hop!: string

			// A valid CIDR notation representing an IP range.
			prefix!: string
		})]])
	})
}
