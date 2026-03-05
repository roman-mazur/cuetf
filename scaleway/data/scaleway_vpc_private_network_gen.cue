package data

#scaleway_vpc_private_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_vpc_private_network")
	close({
		// The date and time of the creation of the private network
		created_at?: string

		// Defines whether default v4 and v6 routes are propagated for
		// this Private Network
		enable_default_route_propagation?: bool
		id?:                               string

		// The IPv4 subnet associated with the private network
		ipv4_subnet?: [...close({
			address?:       string
			created_at?:    string
			id?:            string
			prefix_length?: number
			subnet?:        string
			subnet_mask?:   string
			updated_at?:    string
		})]

		// The IPv6 subnet associated with the private network
		ipv6_subnets?: [...close({
			address?:       string
			created_at?:    string
			id?:            string
			prefix_length?: number
			subnet?:        string
			subnet_mask?:   string
			updated_at?:    string
		})]

		// Defines whether the private network is Regional. By default, it
		// will be Zonal
		is_regional?: bool

		// The name of the private network
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The ID of the private network
		private_network_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// The tags associated with private network
		tags?: [...string]

		// The date and time of the last update of the private network
		updated_at?: string

		// The ID of the vpc to which the private network belongs to
		vpc_id?: string

		// The zone you want to attach the resource to
		zone?: string
	})
}
