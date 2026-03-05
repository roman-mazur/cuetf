package data

#scaleway_cockpit_grafana: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_cockpit_grafana")
	close({
		// The URL to access the Grafana dashboard
		grafana_url?: string
		id?:          string

		// The project ID associated with the Grafana instance
		project_id?: string
	})
}
