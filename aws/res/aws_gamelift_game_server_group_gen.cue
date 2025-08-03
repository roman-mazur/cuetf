package res

import "list"

#aws_gamelift_game_server_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_gamelift_game_server_group")
	close({
		arn?:                    string
		auto_scaling_group_arn?: string
		auto_scaling_policy?: matchN(1, [#auto_scaling_policy, list.MaxItems(1) & [...#auto_scaling_policy]])
		instance_definition?: matchN(1, [#instance_definition, list.MaxItems(20) & [_, _, ...] & [...#instance_definition]])
		launch_template?: matchN(1, [#launch_template, list.MaxItems(1) & [_, ...] & [...#launch_template]])
		timeouts?:                      #timeouts
		balancing_strategy?:            string
		game_server_group_name!:        string
		game_server_protection_policy?: string
		id?:                            string
		max_size!:                      number
		min_size!:                      number
		region?:                        string
		role_arn!:                      string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_subnets?: [...string]
	})

	#auto_scaling_policy: close({
		estimated_instance_warmup?: number
		target_tracking_configuration?: matchN(1, [_#defs."/$defs/auto_scaling_policy/$defs/target_tracking_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/auto_scaling_policy/$defs/target_tracking_configuration"]])
	})

	#instance_definition: close({
		instance_type!:     string
		weighted_capacity?: string
	})

	#launch_template: close({
		id?:      string
		name?:    string
		version?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/auto_scaling_policy/$defs/target_tracking_configuration": close({
		target_value!: number
	})
}
