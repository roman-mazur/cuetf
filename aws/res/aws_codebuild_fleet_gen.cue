package res

import "list"

#aws_codebuild_fleet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codebuild_fleet")
	close({
		arn?:              string
		base_capacity!:    number
		compute_type!:     string
		created?:          string
		environment_type!: string
		compute_configuration?: matchN(1, [#compute_configuration, list.MaxItems(1) & [...#compute_configuration]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		fleet_service_role?: string
		id?:                 string
		image_id?:           string
		last_modified?:      string
		scaling_configuration?: matchN(1, [#scaling_configuration, list.MaxItems(1) & [...#scaling_configuration]])
		name!:              string
		overflow_behavior?: string
		status?: [...close({
			context?:     string
			message?:     string
			status_code?: string
		})]
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_config?: matchN(1, [#vpc_config, [...#vpc_config]])
	})

	#compute_configuration: close({
		disk?:          number
		instance_type?: string
		machine_type?:  string
		memory?:        number
		vcpu?:          number
	})

	#scaling_configuration: close({
		target_tracking_scaling_configs?: matchN(1, [_#defs."/$defs/scaling_configuration/$defs/target_tracking_scaling_configs", [..._#defs."/$defs/scaling_configuration/$defs/target_tracking_scaling_configs"]])
		desired_capacity?: number
		max_capacity?:     number
		scaling_type?:     string
	})

	#vpc_config: close({
		security_group_ids!: [...string]
		subnets!: [...string]
		vpc_id!: string
	})

	_#defs: "/$defs/scaling_configuration/$defs/target_tracking_scaling_configs": close({
		metric_type?:  string
		target_value?: number
	})
}
