package data

#aws_ec2_instance_type_offerings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_instance_type_offerings")
	id?: string
	instance_types?: [...string]
	location_type?: string
	location_types?: [...string]
	locations?: [...string]
	filter?:   #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name: string
		values: [...string]
	}

	#timeouts: read?: string
}
