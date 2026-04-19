package res

#scaleway_ipam_ip: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_ipam_ip")
	close({
		custom_resource?: matchN(1, [#custom_resource, [...#custom_resource]])
		source!: matchN(1, [#source, [_, ...] & [...#source]])

		// Request a specific IP in the requested source pool
		address?: string

		// The IP address with a CIDR notation
		address_cidr?: string

		// The date and time of the creation of the IP
		created_at?: string
		id?:         string

		// Request an IPv6 instead of an IPv4
		is_ipv6?: bool

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// The IP resource
		resource?: [...close({
			id?:          string
			mac_address?: string
			name?:        string
			type?:        string
		})]

		// The reverses DNS for this IP
		reverses?: [...close({
			address?:  string
			hostname?: string
		})]

		// The tags associated with the IP
		tags?: [...string]

		// The date and time of the last update of the IP
		updated_at?: string

		// The zone of the resource
		zone?: string
	})

	#custom_resource: close({
		// MAC address of the custom resource
		mac_address!: string

		// When the resource is in a Private Network, a DNS record is
		// available to resolve the resource name
		name?: string
	})

	#source: close({
		// Private Network the IP lives in if the IP is a private IP
		private_network_id?: string

		// Private Network subnet the IP lives in if the IP is a private
		// IP in a Private Network
		subnet_id?: string

		// Zone the IP lives in if the IP is a public zoned one
		zonal?: string
	})
}
