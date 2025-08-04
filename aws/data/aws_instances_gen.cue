package data

#aws_instances: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_instances")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		id?: string
		ids?: [...string]
		instance_state_names?: [...string]
		instance_tags?: [string]: string
		ipv6_addresses?: [...string]
		private_ips?: [...string]
		public_ips?: [...string]
		region?:   string
		timeouts?: #timeouts
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
