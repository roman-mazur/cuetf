package data

#google_compute_router: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_router")
	close({
		// BGP information specific to this router.
		bgp?: [...close({
			advertise_mode?: string
			advertised_groups?: [...string]
			advertised_ip_ranges?: [...close({
				description?: string
				range?:       string
			})]
			asn?:                number
			identifier_range?:   string
			keepalive_interval?: number
		})]

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource.
		description?: string

		// Indicates if a router is dedicated for use with encrypted VLAN
		// attachments (interconnectAttachments).
		encrypted_interconnect_router?: bool
		id?:                            string

		// Keys used for MD5 authentication.
		md5_authentication_keys?: [...close({
			key?:  string
			name?: string
		})]

		// Name of the resource. The name must be 1-63 characters long,
		// and
		// comply with RFC1035. Specifically, the name must be 1-63
		// characters
		// long and match the regular expression
		// '[a-z]([-a-z0-9]*[a-z0-9])?'
		// which means the first character must be a lowercase letter, and
		// all
		// following characters must be a dash, lowercase letter, or
		// digit,
		// except the last character, which cannot be a dash.
		name!: string

		// A reference to the network to which this router belongs.
		network!: string

		// Additional params passed with the request, but not persisted as
		// part of resource payload
		params?: [...close({
			resource_manager_tags?: [string]: string
		})]
		project?: string

		// Region where the router resides.
		region?:    string
		self_link?: string
	})
}
