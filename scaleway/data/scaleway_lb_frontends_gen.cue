package data

#scaleway_lb_frontends: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_lb_frontends")
	close({
		// List of frontends.
		frontends?: [...close({
			backend_id?: string
			certificate_ids?: [...string]
			connection_rate_limit?: number
			created_at?:            string
			enable_access_logs?:    bool
			enable_http3?:          bool
			id?:                    string
			inbound_port?:          number
			lb_id?:                 string
			name?:                  string
			timeout_client?:        string
			update_at?:             string
		})]
		id?: string

		// frontends with a lb id like it are listed.
		lb_id!: string

		// frontends with a name like it are listed.
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The zone you want to attach the resource to
		zone?: string
	})
}
