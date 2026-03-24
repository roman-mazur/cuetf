package res

#scaleway_cockpit: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_cockpit")
	close({
		id?: string

		// The project_id you want to attach the resource to
		project_id?: string
	})
}
