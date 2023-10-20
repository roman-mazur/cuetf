package data

#aws_availability_zones: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_availability_zones")
	all_availability_zones?: bool
	exclude_names?: [...string]
	exclude_zone_ids?: [...string]
	group_names?: [...string]
	id?: string
	names?: [...string]
	state?: string
	zone_ids?: [...string]
	filter?:   #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name: string
		values: [...string]
	}

	#timeouts: read?: string
}
