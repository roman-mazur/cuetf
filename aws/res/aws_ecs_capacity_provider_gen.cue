package res

import "list"

#aws_ecs_capacity_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ecs_capacity_provider")
	arn?:  string
	id?:   string
	name!: string
	tags?: [string]:     string
	tags_all?: [string]: string
	auto_scaling_group_provider?: #auto_scaling_group_provider | list.MaxItems(1) & [_, ...] & [...#auto_scaling_group_provider]

	#auto_scaling_group_provider: {
		auto_scaling_group_arn!:         string
		managed_draining?:               string
		managed_termination_protection?: string
		managed_scaling?: #auto_scaling_group_provider.#managed_scaling | list.MaxItems(1) & [...#auto_scaling_group_provider.#managed_scaling]

		#managed_scaling: {
			instance_warmup_period?:    number
			maximum_scaling_step_size?: number
			minimum_scaling_step_size?: number
			status?:                    string
			target_capacity?:           number
		}
	}
}
