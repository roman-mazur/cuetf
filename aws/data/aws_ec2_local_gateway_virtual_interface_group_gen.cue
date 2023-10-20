package data

#aws_ec2_local_gateway_virtual_interface_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_local_gateway_virtual_interface_group")
	id?:               string
	local_gateway_id?: string
	local_gateway_virtual_interface_ids?: [...string]
	tags?: [string]: string
	filter?:   #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name: string
		values: [...string]
	}

	#timeouts: read?: string
}
