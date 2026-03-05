package data

#scaleway_lbs: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_lbs")
	close({
		id?: string

		// List of LBs
		lbs?: [...close({
			backend_count?:  number
			created_at?:     string
			description?:    string
			frontend_count?: number
			id?:             string
			instances?: [...close({
				created_at?: string
				id?:         string
				ip_address?: string
				status?:     string
				updated_at?: string
				zone?:       string
			})]
			ips?: [...close({
				id?:              string
				ip_address?:      string
				lb_id?:           string
				organization_id?: string
				project_id?:      string
				reverse?:         string
				zone?:            string
			})]
			name?:                    string
			organization_id?:         string
			private_network_count?:   number
			project_id?:              string
			route_count?:             number
			ssl_compatibility_level?: string
			status?:                  string
			subscriber?:              string
			tags?: [...string]
			type?:       string
			updated_at?: string
			zone?:       string
		})]

		// LBs with a name like it are listed.
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// LBs with these exact tags are listed
		tags?: [...string]

		// The zone you want to attach the resource to
		zone?: string
	})
}
