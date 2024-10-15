package res

import "list"

#aws_gamelift_game_server_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_gamelift_game_server_group")
	arn?:                           string
	auto_scaling_group_arn?:        string
	balancing_strategy?:            string
	game_server_group_name!:        string
	game_server_protection_policy?: string
	id?:                            string
	max_size!:                      number
	min_size!:                      number
	role_arn!:                      string
	tags?: [string]:     string
	tags_all?: [string]: string
	vpc_subnets?: [...string]
	auto_scaling_policy?: #auto_scaling_policy | list.MaxItems(1) & [...#auto_scaling_policy]
	instance_definition?: #instance_definition | list.MaxItems(20) & [_, _, ...] & [...#instance_definition]
	launch_template?: #launch_template | list.MaxItems(1) & [_, ...] & [...#launch_template]
	timeouts?: #timeouts

	#auto_scaling_policy: {
		estimated_instance_warmup?: number
		target_tracking_configuration?: #auto_scaling_policy.#target_tracking_configuration | list.MaxItems(1) & [_, ...] & [...#auto_scaling_policy.#target_tracking_configuration]

		#target_tracking_configuration: target_value!: number
	}

	#instance_definition: {
		instance_type!:     string
		weighted_capacity?: string
	}

	#launch_template: {
		id?:      string
		name?:    string
		version?: string
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
