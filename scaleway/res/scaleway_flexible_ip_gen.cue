package res

#scaleway_flexible_ip: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_flexible_ip")
	close({
		// The date and time of the creation of the Flexible IP (Format
		// ISO 8601)
		created_at?: string

		// Description of the flexible IP
		description?: string

		// The IP address of the flexible IP
		ip_address?: string
		timeouts?:   #timeouts
		id?:         string

		// Defines whether the flexible IP has an IPv6 address
		is_ipv6?: bool

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The reverse DNS for this flexible IP
		reverse?: string

		// The baremetal server associated with this flexible IP
		server_id?: string

		// The status of the flexible IP
		status?: string

		// The tags associated with the flexible IP
		tags?: [...string]

		// The date and time of the last update of the Flexible IP (Format
		// ISO 8601)
		updated_at?: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
