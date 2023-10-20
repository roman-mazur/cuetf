package res

#aws_emr_managed_scaling_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_emr_managed_scaling_policy")
	cluster_id:      string
	id?:             string
	compute_limits?: #compute_limits | [_, ...] & [...#compute_limits]

	#compute_limits: {
		maximum_capacity_units:           number
		maximum_core_capacity_units?:     number
		maximum_ondemand_capacity_units?: number
		minimum_capacity_units:           number
		unit_type:                        string
	}
}
