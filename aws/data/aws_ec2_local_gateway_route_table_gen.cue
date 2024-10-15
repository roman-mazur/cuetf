package data

#aws_ec2_local_gateway_route_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_local_gateway_route_table")
	id?:                           string
	local_gateway_id?:             string
	local_gateway_route_table_id?: string
	outpost_arn?:                  string
	state?:                        string
	tags?: [string]: string
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
