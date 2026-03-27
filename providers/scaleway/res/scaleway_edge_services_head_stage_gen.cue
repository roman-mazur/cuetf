package res

#scaleway_edge_services_head_stage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_edge_services_head_stage")
	close({
		// The ID of the head stage of the pipeline
		head_stage_id?: string
		id?:            string

		// The ID of the pipeline ID
		pipeline_id!: string
	})
}
