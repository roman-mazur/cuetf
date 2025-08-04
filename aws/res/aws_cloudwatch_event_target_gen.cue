package res

import "list"

#aws_cloudwatch_event_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_event_target")
	close({
		appsync_target?: matchN(1, [#appsync_target, list.MaxItems(1) & [...#appsync_target]])
		arn!:            string
		event_bus_name?: string
		force_destroy?:  bool
		id?:             string
		input?:          string
		input_path?:     string
		region?:         string
		role_arn?:       string
		rule!:           string
		target_id?:      string
		batch_target?: matchN(1, [#batch_target, list.MaxItems(1) & [...#batch_target]])
		dead_letter_config?: matchN(1, [#dead_letter_config, list.MaxItems(1) & [...#dead_letter_config]])
		ecs_target?: matchN(1, [#ecs_target, list.MaxItems(1) & [...#ecs_target]])
		http_target?: matchN(1, [#http_target, list.MaxItems(1) & [...#http_target]])
		input_transformer?: matchN(1, [#input_transformer, list.MaxItems(1) & [...#input_transformer]])
		kinesis_target?: matchN(1, [#kinesis_target, list.MaxItems(1) & [...#kinesis_target]])
		redshift_target?: matchN(1, [#redshift_target, list.MaxItems(1) & [...#redshift_target]])
		retry_policy?: matchN(1, [#retry_policy, list.MaxItems(1) & [...#retry_policy]])
		run_command_targets?: matchN(1, [#run_command_targets, list.MaxItems(5) & [...#run_command_targets]])
		sagemaker_pipeline_target?: matchN(1, [#sagemaker_pipeline_target, list.MaxItems(1) & [...#sagemaker_pipeline_target]])
		sqs_target?: matchN(1, [#sqs_target, list.MaxItems(1) & [...#sqs_target]])
	})

	#appsync_target: close({
		graphql_operation?: string
	})

	#batch_target: close({
		array_size?:     number
		job_attempts?:   number
		job_definition!: string
		job_name!:       string
	})

	#dead_letter_config: close({
		arn?: string
	})

	#ecs_target: close({
		enable_ecs_managed_tags?: bool
		enable_execute_command?:  bool
		group?:                   string
		launch_type?:             string
		platform_version?:        string
		capacity_provider_strategy?: matchN(1, [_#defs."/$defs/ecs_target/$defs/capacity_provider_strategy", [..._#defs."/$defs/ecs_target/$defs/capacity_provider_strategy"]])
		propagate_tags?: string
		network_configuration?: matchN(1, [_#defs."/$defs/ecs_target/$defs/network_configuration", list.MaxItems(1) & [..._#defs."/$defs/ecs_target/$defs/network_configuration"]])
		tags?: [string]: string
		task_count?: number
		ordered_placement_strategy?: matchN(1, [_#defs."/$defs/ecs_target/$defs/ordered_placement_strategy", list.MaxItems(5) & [..._#defs."/$defs/ecs_target/$defs/ordered_placement_strategy"]])
		placement_constraint?: matchN(1, [_#defs."/$defs/ecs_target/$defs/placement_constraint", list.MaxItems(10) & [..._#defs."/$defs/ecs_target/$defs/placement_constraint"]])
		task_definition_arn!: string
	})

	#http_target: close({
		header_parameters?: [string]: string
		path_parameter_values?: [...string]
		query_string_parameters?: [string]: string
	})

	#input_transformer: close({
		input_paths?: [string]: string
		input_template!: string
	})

	#kinesis_target: close({
		partition_key_path?: string
	})

	#redshift_target: close({
		database!:            string
		db_user?:             string
		secrets_manager_arn?: string
		sql?:                 string
		statement_name?:      string
		with_event?:          bool
	})

	#retry_policy: close({
		maximum_event_age_in_seconds?: number
		maximum_retry_attempts?:       number
	})

	#run_command_targets: close({
		key!: string
		values!: [...string]
	})

	#sagemaker_pipeline_target: close({
		pipeline_parameter_list?: matchN(1, [_#defs."/$defs/sagemaker_pipeline_target/$defs/pipeline_parameter_list", list.MaxItems(200) & [..._#defs."/$defs/sagemaker_pipeline_target/$defs/pipeline_parameter_list"]])
	})

	#sqs_target: close({
		message_group_id?: string
	})

	_#defs: "/$defs/ecs_target/$defs/capacity_provider_strategy": close({
		base?:              number
		capacity_provider!: string
		weight?:            number
	})

	_#defs: "/$defs/ecs_target/$defs/network_configuration": close({
		assign_public_ip?: bool
		security_groups?: [...string]
		subnets!: [...string]
	})

	_#defs: "/$defs/ecs_target/$defs/ordered_placement_strategy": close({
		field?: string
		type!:  string
	})

	_#defs: "/$defs/ecs_target/$defs/placement_constraint": close({
		expression?: string
		type!:       string
	})

	_#defs: "/$defs/sagemaker_pipeline_target/$defs/pipeline_parameter_list": close({
		name!:  string
		value!: string
	})
}
