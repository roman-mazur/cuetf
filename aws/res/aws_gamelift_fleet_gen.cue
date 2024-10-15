package res

import "list"

#aws_gamelift_fleet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_gamelift_fleet")
	arn?:               string
	build_arn?:         string
	build_id?:          string
	description?:       string
	ec2_instance_type!: string
	fleet_type?:        string
	id?:                string
	instance_role_arn?: string
	log_paths?: [...string]
	metric_groups?: [...string]
	name!:                               string
	new_game_session_protection_policy?: string
	operating_system?:                   string
	script_arn?:                         string
	script_id?:                          string
	tags?: [string]:     string
	tags_all?: [string]: string
	certificate_configuration?: #certificate_configuration | list.MaxItems(1) & [...#certificate_configuration]
	ec2_inbound_permission?: #ec2_inbound_permission | list.MaxItems(50) & [...#ec2_inbound_permission]
	resource_creation_limit_policy?: #resource_creation_limit_policy | list.MaxItems(1) & [...#resource_creation_limit_policy]
	runtime_configuration?: #runtime_configuration | list.MaxItems(1) & [...#runtime_configuration]
	timeouts?: #timeouts

	#certificate_configuration: certificate_type?: string

	#ec2_inbound_permission: {
		from_port!: number
		ip_range!:  string
		protocol!:  string
		to_port!:   number
	}

	#resource_creation_limit_policy: {
		new_game_sessions_per_creator?: number
		policy_period_in_minutes?:      number
	}

	#runtime_configuration: {
		game_session_activation_timeout_seconds?: number
		max_concurrent_game_session_activations?: number
		server_process?: #runtime_configuration.#server_process | list.MaxItems(50) & [...#runtime_configuration.#server_process]

		#server_process: {
			concurrent_executions!: number
			launch_path!:           string
			parameters?:            string
		}
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
