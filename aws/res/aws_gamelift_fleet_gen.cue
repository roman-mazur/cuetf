package res

import "list"

#aws_gamelift_fleet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_gamelift_fleet")
	close({
		arn?: string
		certificate_configuration?: matchN(1, [#certificate_configuration, list.MaxItems(1) & [...#certificate_configuration]])
		build_arn?:         string
		build_id?:          string
		description?:       string
		ec2_instance_type!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		fleet_type?:        string
		id?:                string
		instance_role_arn?: string
		log_paths?: [...string]
		metric_groups?: [...string]
		ec2_inbound_permission?: matchN(1, [#ec2_inbound_permission, list.MaxItems(50) & [...#ec2_inbound_permission]])
		name!:                               string
		new_game_session_protection_policy?: string
		resource_creation_limit_policy?: matchN(1, [#resource_creation_limit_policy, list.MaxItems(1) & [...#resource_creation_limit_policy]])
		runtime_configuration?: matchN(1, [#runtime_configuration, list.MaxItems(1) & [...#runtime_configuration]])
		operating_system?: string
		script_arn?:       string
		script_id?:        string
		timeouts?:         #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#certificate_configuration: close({
		certificate_type?: string
	})

	#ec2_inbound_permission: close({
		from_port!: number
		ip_range!:  string
		protocol!:  string
		to_port!:   number
	})

	#resource_creation_limit_policy: close({
		new_game_sessions_per_creator?: number
		policy_period_in_minutes?:      number
	})

	#runtime_configuration: close({
		server_process?: matchN(1, [_#defs."/$defs/runtime_configuration/$defs/server_process", list.MaxItems(50) & [..._#defs."/$defs/runtime_configuration/$defs/server_process"]])
		game_session_activation_timeout_seconds?: number
		max_concurrent_game_session_activations?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/runtime_configuration/$defs/server_process": close({
		concurrent_executions!: number
		launch_path!:           string
		parameters?:            string
	})
}
