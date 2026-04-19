package res

#scaleway_lb_ip: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_lb_ip")
	close({
		// The load-balancer public IP address
		ip_address?: string

		// If true, creates a Flexible IP with an IPv6 address
		is_ipv6?:  bool
		id?:       string
		timeouts?: #timeouts

		// The ID of the load balancer attached to this IP, if any
		lb_id?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region of the resource
		region?: string

		// The reverse domain name for this IP
		reverse?: string

		// The tags associated with the flexible IP
		tags?: [...string]

		// The zone you want to attach the resource to
		zone?: string
	})

	#timeouts: close({
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
