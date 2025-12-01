package res

#aws_emr_instance_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_emr_instance_group")
	close({
		autoscaling_policy?:  string
		bid_price?:           string
		cluster_id!:          string
		configurations_json?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		ebs_optimized?: bool
		ebs_config?: matchN(1, [#ebs_config, [...#ebs_config]])
		id?:                     string
		instance_count?:         number
		instance_type!:          string
		name?:                   string
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
