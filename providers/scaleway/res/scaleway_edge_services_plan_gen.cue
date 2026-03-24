package res

#scaleway_edge_services_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_edge_services_plan")
	close({
		id?: string

		// Name of the plan
		name?: string

		// The project_id you want to attach the resource to
		project_id?: string
	})
}
