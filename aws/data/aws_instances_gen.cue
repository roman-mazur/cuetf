package data

#aws_instances: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_instances")
	id?: string
	ids?: [...string]
	instance_state_names?: [...string]
	instance_tags?: [string]: string
	ipv6_addresses?: [...string]
	private_ips?: [...string]
	public_ips?: [...string]
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
