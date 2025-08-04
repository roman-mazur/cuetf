package res

#aws_emr_managed_scaling_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_emr_managed_scaling_policy")
	close({
		compute_limits?: matchN(1, [#compute_limits, [_, ...] & [...#compute_limits]])
		cluster_id!: string
		id?:         string
		region?:     string
	})

	#compute_limits: close({
		maximum_capacity_units!:          number
		maximum_core_capacity_units?:     number
		maximum_ondemand_capacity_units?: number
		minimum_capacity_units!:          number
		unit_type!:                       string
	})
}
