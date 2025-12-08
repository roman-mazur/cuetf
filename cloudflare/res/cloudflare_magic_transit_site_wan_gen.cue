package res

#cloudflare_magic_transit_site_wan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_magic_transit_site_wan")
	close({
		// Identifier
		account_id!: string

		// Magic WAN health check rate for tunnels created on this link.
		// The default value is `mid`.
		// Available values: "low", "mid", "high".
		health_check_rate?: string

		// Identifier
		id?:       string
		name?:     string
		physport!: number

		// Identifier
		site_id!: string

		// (optional) if omitted, use DHCP. Submit secondary_address when
		// site is in high availability mode.
		static_addressing?: close({
			// A valid CIDR notation representing an IP range.
			address!: string

			// A valid IPv4 address.
			gateway_address!: string

			// A valid CIDR notation representing an IP range.
			secondary_address?: string
		})

		// VLAN ID. Use zero for untagged.
		vlan_tag?: number
		priority?: number
	})
}
