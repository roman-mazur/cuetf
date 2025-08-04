package res

#aws_resiliencehub_resiliency_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_resiliencehub_resiliency_policy")
	close({
		arn?: string

		// Specifies a high-level geographical location constraint for
		// where resilience policy data can be stored.
		data_location_constraint?: string

		// The description for the policy.
		description?: string

		// Specifies the estimated cost tier of the resiliency policy.
		estimated_cost_tier?: string

		// The name of the policy.
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// The tier for the resiliency policy, ranging from the highest
		// severity (MissionCritical) to lowest (NonCritical).
		tier!: string
		policy?: matchN(1, [#policy, [...#policy]])
		timeouts?: #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#policy: close({
		az?: matchN(1, [_#defs."/$defs/policy/$defs/az", [..._#defs."/$defs/policy/$defs/az"]])
		hardware?: matchN(1, [_#defs."/$defs/policy/$defs/hardware", [..._#defs."/$defs/policy/$defs/hardware"]])
		region?: matchN(1, [_#defs."/$defs/policy/$defs/region", [..._#defs."/$defs/policy/$defs/region"]])
		software?: matchN(1, [_#defs."/$defs/policy/$defs/software", [..._#defs."/$defs/policy/$defs/software"]])
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/policy/$defs/az": close({
		// Recovery Point Objective (RPO) as a Go duration.
		rpo!: string

		// Recovery Time Objective (RTO) as a Go duration.
		rto!: string
	})

	_#defs: "/$defs/policy/$defs/hardware": close({
		// Recovery Point Objective (RPO) as a Go duration.
		rpo!: string

		// Recovery Time Objective (RTO) as a Go duration.
		rto!: string
	})

	_#defs: "/$defs/policy/$defs/region": close({
		// Recovery Point Objective (RPO) as a Go duration.
		rpo?: string

		// Recovery Time Objective (RTO) as a Go duration.
		rto?: string
	})

	_#defs: "/$defs/policy/$defs/software": close({
		// Recovery Point Objective (RPO) as a Go duration.
		rpo!: string

		// Recovery Time Objective (RTO) as a Go duration.
		rto!: string
	})
}
