package data

#aws_vpc_peering_connections: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_peering_connections")
	id?: string
	ids?: [...string]
	tags?: [string]: string
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
