package data

#scaleway_s2s_vpn_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_s2s_vpn_gateway")
	close({
		// The AS Number of the vpn gateway
		asn?: number

		// The date and time of the creation of the VPN gateway
		created_at?: string

		// The VPN gateway type (commercial offer type)
		gateway_type?: string
		id?:           string

		// The ID of the IPAM private IPv4 address to attach to the VPN
		// gateway
		ipam_private_ipv4_id?: string

		// The ID of the IPAM private IPv6 address to attach to the VPN
		// gateway
		ipam_private_ipv6_id?: string

		// The name of the VPN gateway
		name?: string

		// Organization ID of the Project
		organization_id?: string

		// The ID of the Private Network to attach to the VPN gateway
		private_network_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The public endpoint configuration of the VPN gateway
		public_config?: [...close({
			ipam_ipv4_id?: string
			ipam_ipv6_id?: string
		})]

		// The region you want to attach the resource to
		region?: string

		// The status of the VPN gateway
		status?: string

		// The list of tags to apply to the VPN gateway
		tags?: [...string]

		// The date and time of the last update of the VPN gateway
		updated_at?: string

		// The ID of the VPN gateway
		vpn_gateway_id?: string

		// The zone you want to attach the resource to
		zone?: string
	})
}
