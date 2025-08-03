package data

#aws_instances: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_instances")
	close({
		id?: string
		ids?: [...string]
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?: #timeouts
		instance_state_names?: [...string]
		instance_tags?: [string]: string
		ipv6_addresses?: [...string]
		private_ips?: [...string]
		public_ips?: [...string]
		region?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
