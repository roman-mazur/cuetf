package data

#scaleway_flexible_ips: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_flexible_ips")
	close({
		id?: string

		// List of flexible IPs
		ips?: [...close({
			created_at?:  string
			description?: string
			id?:          string
			ip_address?:  string
			mac_address?: [...close({
				created_at?:  string
				id?:          string
				mac_address?: string
				mac_type?:    string
				status?:      string
				updated_at?:  string
				zone?:        string
			})]
			organization_id?: string
			project_id?:      string
			reverse?:         string
			status?:          string
			tags?: [...string]
			updated_at?: string
			zone?:       string
		})]

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// Flexible IPs that are attached to these server IDs are listed
		server_ids?: [...string]

		// Flexible IPs with these exact tags are listed
		tags?: [...string]

		// The zone you want to attach the resource to
		zone?: string
	})
}
