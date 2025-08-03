package res

#aws_emr_instance_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_emr_instance_group")
	close({
		autoscaling_policy?:  string
		bid_price?:           string
		cluster_id!:          string
		configurations_json?: string
		ebs_optimized?:       bool
		id?:                  string
		instance_count?:      number
		instance_type!:       string
		ebs_config?: matchN(1, [#ebs_config, [...#ebs_config]])
		name?:                   string
		region?:                 string
		running_instance_count?: number
		status?:                 string
	})

	#ebs_config: close({
		iops?:                 number
		size!:                 number
		type!:                 string
		volumes_per_instance?: number
	})
}
