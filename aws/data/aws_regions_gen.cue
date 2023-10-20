package data

#aws_regions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_regions")
	all_regions?: bool
	id?:          string
	names?: [...string]
	filter?: #filter | [...#filter]

	#filter: {
		name: string
		values: [...string]
	}
}
