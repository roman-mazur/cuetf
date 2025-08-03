package data

#aws_imagebuilder_image_recipes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_imagebuilder_image_recipes")
	close({
		arns?: [...string]
		filter?: matchN(1, [#filter, [...#filter]])
		id?: string
		names?: [...string]
		owner?:  string
		region?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
