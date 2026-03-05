package data

#scaleway_cockpit: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_cockpit")
	close({
		// [DEPRECATED] Endpoints list. Please use
		// 'scaleway_cockpit_source' instead.
		endpoints?: [...close({
			alertmanager_url?: string
			grafana_url?:      string
			logs_url?:         string
			metrics_url?:      string
			traces_url?:       string
		})]
		id?: string

		// [DEPRECATED] The plan ID of the cockpit. This field is no
		// longer relevant.
		plan_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// [DEPRECATED] Push_url
		push_url?: [...close({
			push_logs_url?:    string
			push_metrics_url?: string
		})]
	})
}
