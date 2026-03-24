package data

#scaleway_lb_routes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_lb_routes")
	close({
		// Routes with a frontend id like it are listed.
		frontend_id?: string
		id?:          string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// List of routes.
		routes?: [...close({
			backend_id?:        string
			created_at?:        string
			frontend_id?:       string
			id?:                string
			match_host_header?: string
			match_sni?:         string
			match_subdomains?:  bool
			update_at?:         string
		})]

		// The zone you want to attach the resource to
		zone?: string
	})
}
