package data

#scaleway_s2s_vpn_customer_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_s2s_vpn_customer_gateway")
	close({
		// The AS Number of the customer gateway
		asn?: number

		// The date and time of the creation of the TLS stage
		created_at?: string

		// The ID of the customer gateway
		customer_gateway_id?: string
		id?:                  string

		// The public IPv4 address of the customer gateway
		ipv4_public?: string

		// The public IPv6 address of the customer gateway
		ipv6_public?: string

		// The name of the customer gateway
		name?: string

		// Organization ID of the Project
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// The list of tags to apply to the customer gateway
		tags?: [...string]

		// The date and time of the last update of the TLS stage
		updated_at?: string
	})
}
