package res

#aws_resiliencehub_resiliency_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_resiliencehub_resiliency_policy")
	close({
		arn?:                      string
		data_location_constraint?: string
		description?:              string
		estimated_cost_tier?:      string
		policy?: matchN(1, [#policy, [...#policy]])
		name!:   string
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		tier!:     string
		timeouts?: #timeouts
	})

	#policy: close({
		az?: matchN(1, [_#defs."/$defs/policy/$defs/az", [..._#defs."/$defs/policy/$defs/az"]])
		hardware?: matchN(1, [_#defs."/$defs/policy/$defs/hardware", [..._#defs."/$defs/policy/$defs/hardware"]])
		region?: matchN(1, [_#defs."/$defs/policy/$defs/region", [..._#defs."/$defs/policy/$defs/region"]])
		software?: matchN(1, [_#defs."/$defs/policy/$defs/software", [..._#defs."/$defs/policy/$defs/software"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/policy/$defs/az": close({
		rpo!: string
		rto!: string
	})

	_#defs: "/$defs/policy/$defs/hardware": close({
		rpo!: string
		rto!: string
	})

	_#defs: "/$defs/policy/$defs/region": close({
		rpo?: string
		rto?: string
	})

	_#defs: "/$defs/policy/$defs/software": close({
		rpo!: string
		rto!: string
	})
}
