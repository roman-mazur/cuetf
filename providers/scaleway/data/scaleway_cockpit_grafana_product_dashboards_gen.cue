package data

scaleway_cockpit_grafana_product_dashboards: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_cockpit_grafana_product_dashboards")
	close({
		// List of Grafana product dashboards
		dashboards?: matchN(1, [close({
			// Dashboard name (use with scaleway_cockpit_grafana_product_dashboard)
			name?: string

			// Dashboard tags
			tags?: [...string]

			// Human-readable dashboard title
			title?: string

			// URL to open the dashboard in Grafana
			url?: string

			// Dashboard variables
			variables?: [...string]
		}), [...close({
			// Dashboard name (use with scaleway_cockpit_grafana_product_dashboard)
			name?: string

			// Dashboard tags
			tags?: [...string]

			// Human-readable dashboard title
			title?: string

			// URL to open the dashboard in Grafana
			url?: string

			// Dashboard variables
			variables?: [...string]
		})]])

		// The project ID
		id?: string

		// List of dashboard names
		names?: [...string]

		// The ID of the project to list Grafana product dashboards for
		project_id?: string

		// Filter dashboards by tags (e.g. rdb, lb)
		tags?: [...string]
	})
}
