package res

import "list"

#aws_cloudwatch_event_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_event_target")
	arn!:            string
	event_bus_name?: string
	force_destroy?:  bool
	id?:             string
	input?:          string
	input_path?:     string
	role_arn?:       string
	rule!:           string
	target_id?:      string
	batch_target?: #batch_target | list.MaxItems(1) & [...#batch_target]
	dead_letter_config?: #dead_letter_config | list.MaxItems(1) & [...#dead_letter_config]
	ecs_target?: #ecs_target | list.MaxItems(1) & [...#ecs_target]
	http_target?: #http_target | list.MaxItems(1) & [...#http_target]
	input_transformer?: #input_transformer | list.MaxItems(1) & [...#input_transformer]
	kinesis_target?: #kinesis_target | list.MaxItems(1) & [...#kinesis_target]
	redshift_target?: #redshift_target | list.MaxItems(1) & [...#redshift_target]
	retry_policy?: #retry_policy | list.MaxItems(1) & [...#retry_policy]
	run_command_targets?: #run_command_targets | list.MaxItems(5) & [...#run_command_targets]
	sagemaker_pipeline_target?: #sagemaker_pipeline_target | list.MaxItems(1) & [...#sagemaker_pipeline_target]
	sqs_target?: #sqs_target | list.MaxItems(1) & [...#sqs_target]

	#batch_target: {
		array_size?:     number
		job_attempts?:   number
		job_definition!: string
		job_name!:       string
	}

	#dead_letter_config: arn?: string

	#ecs_target: {
		enable_ecs_managed_tags?: bool
		enable_execute_command?:  bool
		group?:                   string
		launch_type?:             string
		platform_version?:        string
		propagate_tags?:          string
		tags?: [string]: string
		task_count?:          number
		task_definition_arn!: string
		capacity_provider_strategy?: #ecs_target.#capacity_provider_strategy | [...#ecs_target.#capacity_provider_strategy]
		network_configuration?: #ecs_target.#network_configuration | list.MaxItems(1) & [...#ecs_target.#network_configuration]
		ordered_placement_strategy?: #ecs_target.#ordered_placement_strategy | list.MaxItems(5) & [...#ecs_target.#ordered_placement_strategy]
		placement_constraint?: #ecs_target.#placement_constraint | list.MaxItems(10) & [...#ecs_target.#placement_constraint]

		#capacity_provider_strategy: {
			base?:              number
			capacity_provider!: string
			weight?:            number
		}

		#network_configuration: {
			assign_public_ip?: bool
			security_groups?: [...string]
			subnets!: [...string]
		}

		#ordered_placement_strategy: {
			field?: string
			type!:  string
		}

		#placement_constraint: {
			expression?: string
			type!:       string
		}
	}

	#http_target: {
		header_parameters?: [string]: string
		path_parameter_values?: [...string]
		query_string_parameters?: [string]: string
	}

	#input_transformer: {
		input_paths?: [string]: string
		input_template!: string
	}

	#kinesis_target: partition_key_path?: string

	#redshift_target: {
		database!:            string
		db_user?:             string
		secrets_manager_arn?: string
		sql?:                 string
		statement_name?:      string
		with_event?:          bool
	}

	#retry_policy: {
		maximum_event_age_in_seconds?: number
		maximum_retry_attempts?:       number
	}

	#run_command_targets: {
		key!: string
		values!: [...string]
	}

	#sagemaker_pipeline_target: {
		pipeline_parameter_list?: #sagemaker_pipeline_target.#pipeline_parameter_list | list.MaxItems(200) & [...#sagemaker_pipeline_target.#pipeline_parameter_list]

		#pipeline_parameter_list: {
			name!:  string
			value!: string
		}
	}

	#sqs_target: message_group_id?: string
}
