package res

#cloudflare_magic_transit_site_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_magic_transit_site_acl")
	close({
		// Identifier
		account_id!: string

		// Description for the ACL.
		description?: string

		// The desired forwarding action for this ACL policy. If set to
		// "false", the policy will forward traffic to Cloudflare. If set
		// to "true", the policy will forward traffic locally on the
		// Magic Connector. If not included in request, will default to
		// false.
		forward_locally?: bool

		// Identifier
		id?: string

		// The name of the ACL.
		name!: string
		protocols?: [...string]
		lan_1!: close({
			// The identifier for the LAN you want to create an ACL policy
			// with.
			lan_id!: string

			// The name of the LAN based on the provided lan_id.
			lan_name?: string

			// Array of port ranges on the provided LAN that will be included
			// in the ACL. If no ports or port rangess are provided,
			// communication on any port on this LAN is allowed.
			port_ranges?: [...string]

			// Array of ports on the provided LAN that will be included in the
			// ACL. If no ports or port ranges are provided, communication on
			// any port on this LAN is allowed.
			ports?: [...number]

			// Array of subnet IPs within the LAN that will be included in the
			// ACL. If no subnets are provided, communication on any subnets
			// on this LAN are allowed.
			subnets?: [...string]
		})
		lan_2!: close({
			// The identifier for the LAN you want to create an ACL policy
			// with.
			lan_id!: string

			// The name of the LAN based on the provided lan_id.
			lan_name?: string

			// Array of port ranges on the provided LAN that will be included
			// in the ACL. If no ports or port rangess are provided,
			// communication on any port on this LAN is allowed.
			port_ranges?: [...string]

			// Array of ports on the provided LAN that will be included in the
			// ACL. If no ports or port ranges are provided, communication on
			// any port on this LAN is allowed.
			ports?: [...number]

			// Array of subnet IPs within the LAN that will be included in the
			// ACL. If no subnets are provided, communication on any subnets
			// on this LAN are allowed.
			subnets?: [...string]
		})

		// Identifier
		site_id!: string

		// The desired traffic direction for this ACL policy. If set to
		// "false", the policy will allow bidirectional traffic. If set
		// to "true", the policy will only allow traffic in one
		// direction. If not included in request, will default to false.
		unidirectional?: bool
	})
}
