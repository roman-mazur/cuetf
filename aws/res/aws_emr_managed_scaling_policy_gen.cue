package res

#aws_emr_managed_scaling_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_emr_managed_scaling_policy")
	close({
		cluster_id!: string
		id?:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                        string
		scaling_strategy?:              string
		utilization_performance_index?: number
		compute_limits!: matchN(1, [#compute_limits, [_, ...] & [...#compute_limits]])
	})

	#compute_limits: close({
		maximum_capacity_units!:          number
		maximum_core_capacity_units?:     number
		maximum_ondemand_capacity_units?: number
		minimum_capacity_units!:          number
		unit_type!:                       string
	})
}
