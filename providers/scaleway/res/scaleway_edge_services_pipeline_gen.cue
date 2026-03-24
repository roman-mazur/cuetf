package res

#scaleway_edge_services_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_edge_services_pipeline")
	close({
		timeouts?: #timeouts

		// The pipeline description
		created_at?: string

		// The pipeline description
		description?: string
		id?:          string

		// The pipeline name
		name?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The pipeline description
		status?: string

		// The pipeline description
		updated_at?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
