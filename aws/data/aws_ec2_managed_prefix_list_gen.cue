package data

#aws_ec2_managed_prefix_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_managed_prefix_list")
	address_family?: string
	arn?:            string
	entries?: [...{
		cidr?:        string
		description?: string
	}]
	id?:          string
	max_entries?: number
	name?:        string
	owner_id?:    string
	tags?: [string]: string
	version?: number
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
