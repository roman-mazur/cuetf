package data

#aws_devopsguru_resource_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_devopsguru_resource_collection")
	close({
		cloudformation?: [...close({
			stack_names?: [...string]
		})]
		id?:     string
		region?: string
		tags?: [...close({
			app_boundary_key?: string
			tag_values?: [...string]
		})]
		type!: string
	})
}
