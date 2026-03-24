package data

#scaleway_lb_acls: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_lb_acls")
	close({
		// ACLs that are listed.
		acls?: [...close({
			action?: [...close({
				redirect?: [...close({
					code?:   number
					target?: string
					type?:   string
				})]
				type?: string
			})]
			created_at?:  string
			description?: string
			frontend_id?: string
			id?:          string
			index?:       number
			match?: [...close({
				http_filter?:        string
				http_filter_option?: string
				http_filter_value?: [...string]
				invert?: bool
				ip_subnet?: [...string]
				ips_edge_services?: bool
			})]
			name?:      string
			update_at?: string
		})]

		// ACLs with a frontend id like it are listed.
		frontend_id!: string
		id?:          string

		// ACLs with a name like it are listed.
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The zone you want to attach the resource to
		zone?: string
	})
}
