package res

#scaleway_cockpit_grafana_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_cockpit_grafana_user")
	close({
		timeouts?: #timeouts

		// The grafana URL
		grafana_url?: string
		id?:          string

		// The login of the Grafana user
		login!: string

		// The password of the Grafana user
		password?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The role of the Grafana user
		role!: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
	})
}
