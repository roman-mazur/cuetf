package data

#aws_network_acls: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_network_acls")
	id?: string
	ids?: [...string]
	tags?: [string]: string
	vpc_id?:   string
	filter?:   #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name: string
		values: [...string]
	}

	#timeouts: read?: string
}
