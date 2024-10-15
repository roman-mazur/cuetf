package data

#aws_devopsguru_resource_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_devopsguru_resource_collection")
	id?:   string
	type!: string
	cloudformation?: #cloudformation | [...#cloudformation]
	tags?: #tags | [...#tags]

	#cloudformation: stack_names?: [...string]

	#tags: {
		app_boundary_key?: string
		tag_values?: [...string]
	}
}
