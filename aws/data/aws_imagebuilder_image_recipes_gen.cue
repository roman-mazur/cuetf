package data

#aws_imagebuilder_image_recipes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_imagebuilder_image_recipes")
	arns?: [...string]
	id?: string
	names?: [...string]
	owner?: string
	filter?: #filter | [...#filter]

	#filter: {
		name!: string
		values!: [...string]
	}
}
