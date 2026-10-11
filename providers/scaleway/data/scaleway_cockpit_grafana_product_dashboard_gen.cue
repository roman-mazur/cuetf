package data

scaleway_cockpit_grafana_product_dashboard: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_cockpit_grafana_product_dashboard")
	close({
		// Name of the Grafana product dashboard to retrieve
		dashboard_name!: string

		// The ID of the data source (`{project_id}/{name}`)
		id?: string

		// Dashboard name
		name?: string

		// The ID of the project the dashboard belongs to
		project_id?: string

		// Dashboard tags
		tags?: [...string]

		// Human-readable dashboard title
		title?: string

		// URL to open the dashboard in Grafana
		url?: string

		// Dashboard variables
		variables?: [...string]
	})
}
