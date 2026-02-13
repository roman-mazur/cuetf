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
		nat?: close({
			// A valid CIDR notation representing an IP range.
			static_prefix?: string
		})

		// Identifier
		id?: string
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

		// Identifier
		site_id!: string

		// If the site is not configured in high availability mode, this
		// configuration is optional (if omitted, use DHCP). However, if
		// in high availability mode, static_address is required along
		// with secondary and virtual address.
		static_addressing?: close({
			dhcp_relay?: close({
				// List of DHCP server IPs.
				server_addresses?: [...string]
			})

			// A valid CIDR notation representing an IP range.
			address!: string

			// A valid CIDR notation representing an IP range.
			secondary_address?: string
			dhcp_server?: close({
				// A valid IPv4 address.
				dhcp_pool_end?: string

				// A valid IPv4 address.
				dhcp_pool_start?: string

				// A valid IPv4 address.
				dns_server?: string
				dns_servers?: [...string]

				// Mapping of MAC addresses to IP addresses
				reservations?: [string]: string
			})

			// A valid CIDR notation representing an IP range.
			virtual_address?: string
		})
		name?:     string
		physport?: number

		// VLAN ID. Use zero for untagged.
		vlan_tag?: number
	})
}
