package data

#scaleway_lb_ips: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_lb_ips")
	close({
		id?: string

		// IPs within a CIDR block like it are listed.
		ip_cidr_range?: string

		// IP type to filter for
		ip_type?: string

		// List of IPs
		ips?: [...close({
			id?:              string
			ip_address?:      string
			lb_id?:           string
			organization_id?: string
			project_id?:      string
			reverse?:         string
			tags?: [...string]
			zone?: string
		})]

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// IPs with these exact tags are listed
		tags?: [...string]

		// The zone you want to attach the resource to
		zone?: string
	})
}
