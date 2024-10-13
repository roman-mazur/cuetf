package data

#aws_ec2_managed_prefix_lists: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_managed_prefix_lists")
	id?: string
	ids?: [...string]
	tags?: [string]: string
	filter?: #filter | [...#filter]

	#filter: {
		name!: string
		values!: [...string]
	}
}
