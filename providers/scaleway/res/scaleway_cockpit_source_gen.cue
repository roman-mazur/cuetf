package res

#scaleway_cockpit_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_cockpit_source")
	close({
		// The date and time of the creation of the cockpit datasource
		created_at?: string

		// Name of the datasource
		name?:     string
		timeouts?: #timeouts
		id?:       string

		// The origin of the datasource
		origin?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The URL endpoint used for pushing data to the cockpit data
		// source.
		push_url?: string

		// The region you want to attach the resource to
		region?: string

		// The number of days to retain data, must be between 1 and 365.
		retention_days!: number

		// Indicates whether the data source is synchronized with Grafana
		synchronized_with_grafana?: bool

		// The type of the datasource
		type?: string

		// The date and time of the last update of the cockpit datasource
		updated_at?: string

		// The URL of the datasource
		url?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
	})
}
