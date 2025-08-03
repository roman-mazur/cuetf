package res

#aws_devopsguru_resource_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_devopsguru_resource_collection")
	close({
		id?:     string
		region?: string
		type!:   string
		cloudformation?: matchN(1, [#cloudformation, [...#cloudformation]])
		tags?: matchN(1, [#tags, [...#tags]])
	})

	#cloudformation: close({
		stack_names!: [...string]
	})

	#tags: close({
		app_boundary_key!: string
		tag_values!: [...string]
	})
}
