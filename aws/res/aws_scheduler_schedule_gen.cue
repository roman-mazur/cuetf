package res

import "list"

#aws_scheduler_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_scheduler_schedule")
	close({
		arn?:         string
		description?: string
		end_date?:    string
		group_name?:  string
		id?:          string
		kms_key_arn?: string
		name?:        string
		flexible_time_window?: matchN(1, [#flexible_time_window, list.MaxItems(1) & [_, ...] & [...#flexible_time_window]])
		name_prefix?: string
		region?:      string
		target?: matchN(1, [#target, list.MaxItems(1) & [_, ...] & [...#target]])
		schedule_expression!:          string
		schedule_expression_timezone?: string
		start_date?:                   string
		state?:                        string
	})

	#flexible_time_window: close({
		maximum_window_in_minutes?: number
		mode!:                      string
	})

	#target: close({
		dead_letter_config?: matchN(1, [_#defs."/$defs/target/$defs/dead_letter_config", list.MaxItems(1) & [..._#defs."/$defs/target/$defs/dead_letter_config"]])
		ecs_parameters?: matchN(1, [_#defs."/$defs/target/$defs/ecs_parameters", list.MaxItems(1) & [..._#defs."/$defs/target/$defs/ecs_parameters"]])
		arn!:      string
		input?:    string
		role_arn!: string
		eventbridge_parameters?: matchN(1, [_#defs."/$defs/target/$defs/eventbridge_parameters", list.MaxItems(1) & [..._#defs."/$defs/target/$defs/eventbridge_parameters"]])
		kinesis_parameters?: matchN(1, [_#defs."/$defs/target/$defs/kinesis_parameters", list.MaxItems(1) & [..._#defs."/$defs/target/$defs/kinesis_parameters"]])
		retry_policy?: matchN(1, [_#defs."/$defs/target/$defs/retry_policy", list.MaxItems(1) & [..._#defs."/$defs/target/$defs/retry_policy"]])
		sagemaker_pipeline_parameters?: matchN(1, [_#defs."/$defs/target/$defs/sagemaker_pipeline_parameters", list.MaxItems(1) & [..._#defs."/$defs/target/$defs/sagemaker_pipeline_parameters"]])
		sqs_parameters?: matchN(1, [_#defs."/$defs/target/$defs/sqs_parameters", list.MaxItems(1) & [..._#defs."/$defs/target/$defs/sqs_parameters"]])
	})

	_#defs: "/$defs/target/$defs/dead_letter_config": close({
		arn!: string
	})

	_#defs: "/$defs/target/$defs/ecs_parameters": close({
		enable_ecs_managed_tags?: bool
		enable_execute_command?:  bool
		group?:                   string
		launch_type?:             string
		platform_version?:        string
		propagate_tags?:          string
		capacity_provider_strategy?: matchN(1, [_#defs."/$defs/target/$defs/ecs_parameters/$defs/capacity_provider_strategy", list.MaxItems(6) & [..._#defs."/$defs/target/$defs/ecs_parameters/$defs/capacity_provider_strategy"]])
		network_configuration?: matchN(1, [_#defs."/$defs/target/$defs/ecs_parameters/$defs/network_configuration", list.MaxItems(1) & [..._#defs."/$defs/target/$defs/ecs_parameters/$defs/network_configuration"]])
		placement_constraints?: matchN(1, [_#defs."/$defs/target/$defs/ecs_parameters/$defs/placement_constraints", list.MaxItems(10) & [..._#defs."/$defs/target/$defs/ecs_parameters/$defs/placement_constraints"]])
		reference_id?: string
		tags?: [string]: string
		task_count?:          number
		task_definition_arn!: string
		placement_strategy?: matchN(1, [_#defs."/$defs/target/$defs/ecs_parameters/$defs/placement_strategy", list.MaxItems(5) & [..._#defs."/$defs/target/$defs/ecs_parameters/$defs/placement_strategy"]])
	})

	_#defs: "/$defs/target/$defs/ecs_parameters/$defs/capacity_provider_strategy": close({
		base?:              number
		capacity_provider!: string
		weight?:            number
	})

	_#defs: "/$defs/target/$defs/ecs_parameters/$defs/network_configuration": close({
		assign_public_ip?: bool
		security_groups?: [...string]
		subnets!: [...string]
	})

	_#defs: "/$defs/target/$defs/ecs_parameters/$defs/placement_constraints": close({
		expression?: string
		type!:       string
	})

	_#defs: "/$defs/target/$defs/ecs_parameters/$defs/placement_strategy": close({
		field?: string
		type!:  string
	})

	_#defs: "/$defs/target/$defs/eventbridge_parameters": close({
		detail_type!: string
		source!:      string
	})

	_#defs: "/$defs/target/$defs/kinesis_parameters": close({
		partition_key!: string
	})

	_#defs: "/$defs/target/$defs/retry_policy": close({
		maximum_event_age_in_seconds?: number
		maximum_retry_attempts?:       number
	})

	_#defs: "/$defs/target/$defs/sagemaker_pipeline_parameters": close({
		pipeline_parameter?: matchN(1, [_#defs."/$defs/target/$defs/sagemaker_pipeline_parameters/$defs/pipeline_parameter", list.MaxItems(200) & [..._#defs."/$defs/target/$defs/sagemaker_pipeline_parameters/$defs/pipeline_parameter"]])
	})

	_#defs: "/$defs/target/$defs/sagemaker_pipeline_parameters/$defs/pipeline_parameter": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/target/$defs/sqs_parameters": close({
		message_group_id?: string
	})
}
