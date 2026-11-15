package res

cloudflare_magic_transit_site_wan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_magic_transit_site_wan")
	close({
		// Identifier
		account_id!: string

		// Magic WAN health check rate for tunnels created on this link. The default value is `mid`.
		// Available values: "low", "mid", "high".
		health_check_rate?: string

		// Identifier
		id?:                       string
		load_balance_inner_flows?: bool
		name?:                     string
		physport!:                 number
		priority?:                 number

		// Provisioned download rate of the WAN circuit in kilobits per second.
		provisioned_download_kbps?: number

		// Provisioned upload rate of the WAN circuit in kilobits per second.
		provisioned_upload_kbps?: number

		// Identifier
		site_id!: string

		// Static addressing configuration for a WAN. Omit to use DHCP. Submit
		// secondary_address when the site is in high availability mode.
		static_addressing?: close({
			// A valid CIDR notation representing an IP range.
			address!: string

			// A valid IPv4 address.
			gateway_address!: string

			// A valid CIDR notation representing an IP range.
			secondary_address?: string

			// Gateway address for the secondary connector of a high availability site.
			secondary_gateway_address?: string
		})

		// VLAN ID. Use zero for untagged.
		vlan_tag?: number
	})
}
