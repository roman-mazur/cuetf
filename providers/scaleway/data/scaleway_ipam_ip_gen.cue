package data

import "list"

#scaleway_ipam_ip: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_ipam_ip")
	close({
		resource?: matchN(1, [#resource, list.MaxItems(1) & [...#resource]])

		// The IP address
		address?: string

		// The IP address with a CIDR notation
		address_cidr?: string

		// Defines whether to filter only for IPs which are attached to a
		// resource
		attached?: bool
		id?:       string

		// The ID of the IPAM IP
		ipam_ip_id?: string

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

		// The tags associated with the IP
		tags?: [...string]

		// IP Type (ipv4, ipv6)
		type?: string

		// The zone you want to attach the resource to
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
