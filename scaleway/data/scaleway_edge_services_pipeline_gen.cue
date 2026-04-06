package data

#scaleway_edge_services_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_edge_services_pipeline")
	close({
		// The pipeline description
		created_at?: string

		// The pipeline description
		description?: string
		id?:          string

		// The pipeline name
		name?: string

		// The ID of the pipeline
		pipeline_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The pipeline description
		status?: string

		// The pipeline description
		updated_at?: string
	})
}
