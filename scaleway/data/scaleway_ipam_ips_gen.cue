package data

import "list"

#scaleway_ipam_ips: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_ipam_ips")
	close({
		// Defines whether to filter only for IPs which are attached to a
		// resource
		attached?: bool

		// IPs to filter for
		ips?: [...close({
			address?:    string
			created_at?: string
			id?:         string
			project_id?: string
			region?:     string
			resource?: [...close({
				id?:          string
				mac_address?: string
				name?:        string
				type?:        string
			})]
			tags?: [...string]
			updated_at?: string
			zone?:       string
		})]
		id?: string
		resource?: matchN(1, [#resource, list.MaxItems(1) & [...#resource]])

		// The MAC address to filter for
		mac_address?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The private Network to filter for
		private_network_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// The tags associated with the IP to filter for
		tags?: [...string]

		// IP Type (ipv4, ipv6) to filter for
		type?: string

		// The zone you want to filter upon
		zonal?: string
	})

	#resource: close({
		// ID of the resource to filter for
		id?: string

		// Name of the resource to filter for
		name?: string

		// Type of resource to filter for
		type!: string
	})
}
