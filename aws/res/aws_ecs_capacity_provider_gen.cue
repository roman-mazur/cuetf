package res

import "list"

#aws_ecs_capacity_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecs_capacity_provider")
	close({
		arn?:  string
		id?:   string
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		auto_scaling_group_provider?: matchN(1, [#auto_scaling_group_provider, list.MaxItems(1) & [_, ...] & [...#auto_scaling_group_provider]])
	})

	#auto_scaling_group_provider: close({
		managed_scaling?: matchN(1, [_#defs."/$defs/auto_scaling_group_provider/$defs/managed_scaling", list.MaxItems(1) & [..._#defs."/$defs/auto_scaling_group_provider/$defs/managed_scaling"]])
		auto_scaling_group_arn!:         string
		managed_draining?:               string
		managed_termination_protection?: string
	})

	_#defs: "/$defs/auto_scaling_group_provider/$defs/managed_scaling": close({
		instance_warmup_period?:    number
		maximum_scaling_step_size?: number
		minimum_scaling_step_size?: number
		status?:                    string
		target_capacity?:           number
	})
}
