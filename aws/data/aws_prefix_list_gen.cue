package data

#aws_prefix_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_prefix_list")
	cidr_blocks?: [...string]
	id?:             string
	name?:           string
	prefix_list_id?: string
	filter?:         #filter | [...#filter]
	timeouts?:       #timeouts

	#filter: {
		name: string
		values: [...string]
	}

	#timeouts: read?: string
}