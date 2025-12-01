package res

import "list"

#aws_ssm_maintenance_window_task: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ssm_maintenance_window_task")
	close({
		arn?:             string
		cutoff_behavior?: string
		description?:     string
		id?:              string
		max_concurrency?: string
		max_errors?:      string
		name?:            string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		targets?: matchN(1, [#targets, list.MaxItems(5) & [...#targets]])
		task_invocation_parameters?: matchN(1, [#task_invocation_parameters, list.MaxItems(1) & [...#task_invocation_parameters]])
		priority?:         number
		service_role_arn?: string
		task_arn!:         string
		task_type!:        string
		window_id!:        string
		window_task_id?:   string
	})

	#targets: close({
		key!: string
		values!: [...string]
	})

	#task_invocation_parameters: close({
		automation_parameters?: matchN(1, [_#defs."/$defs/task_invocation_parameters/$defs/automation_parameters", list.MaxItems(1) & [..._#defs."/$defs/task_invocation_parameters/$defs/automation_parameters"]])
		lambda_parameters?: matchN(1, [_#defs."/$defs/task_invocation_parameters/$defs/lambda_parameters", list.MaxItems(1) & [..._#defs."/$defs/task_invocation_parameters/$defs/lambda_parameters"]])
		run_command_parameters?: matchN(1, [_#defs."/$defs/task_invocation_parameters/$defs/run_command_parameters", list.MaxItems(1) & [..._#defs."/$defs/task_invocation_parameters/$defs/run_command_parameters"]])
		step_functions_parameters?: matchN(1, [_#defs."/$defs/task_invocation_parameters/$defs/step_functions_parameters", list.MaxItems(1) & [..._#defs."/$defs/task_invocation_parameters/$defs/step_functions_parameters"]])
	})

	_#defs: "/$defs/task_invocation_parameters/$defs/automation_parameters": close({
		parameter?: matchN(1, [_#defs."/$defs/task_invocation_parameters/$defs/automation_parameters/$defs/parameter", [..._#defs."/$defs/task_invocation_parameters/$defs/automation_parameters/$defs/parameter"]])
		document_version?: string
	})

	_#defs: "/$defs/task_invocation_parameters/$defs/automation_parameters/$defs/parameter": close({
		name!: string
		values!: [...string]
	})

	_#defs: "/$defs/task_invocation_parameters/$defs/lambda_parameters": close({
		client_context?: string
		payload?:        string
		qualifier?:      string
	})

	_#defs: "/$defs/task_invocation_parameters/$defs/run_command_parameters": close({
		comment?:            string
		document_hash?:      string
		document_hash_type?: string
		document_version?:   string
		cloudwatch_config?: matchN(1, [_#defs."/$defs/task_invocation_parameters/$defs/run_command_parameters/$defs/cloudwatch_config", list.MaxItems(1) & [..._#defs."/$defs/task_invocation_parameters/$defs/run_command_parameters/$defs/cloudwatch_config"]])
		output_s3_bucket?:     string
		output_s3_key_prefix?: string
		service_role_arn?:     string
		timeout_seconds?:      number
		notification_config?: matchN(1, [_#defs."/$defs/task_invocation_parameters/$defs/run_command_parameters/$defs/notification_config", list.MaxItems(1) & [..._#defs."/$defs/task_invocation_parameters/$defs/run_command_parameters/$defs/notification_config"]])
		parameter?: matchN(1, [_#defs."/$defs/task_invocation_parameters/$defs/run_command_parameters/$defs/parameter", [..._#defs."/$defs/task_invocation_parameters/$defs/run_command_parameters/$defs/parameter"]])
	})

	_#defs: "/$defs/task_invocation_parameters/$defs/run_command_parameters/$defs/cloudwatch_config": close({
		cloudwatch_log_group_name?: string
		cloudwatch_output_enabled?: bool
	})

	_#defs: "/$defs/task_invocation_parameters/$defs/run_command_parameters/$defs/notification_config": close({
		notification_arn?: string
		notification_events?: [...string]
		notification_type?: string
	})

	_#defs: "/$defs/task_invocation_parameters/$defs/run_command_parameters/$defs/parameter": close({
		name!: string
		values!: [...string]
	})

	_#defs: "/$defs/task_invocation_parameters/$defs/step_functions_parameters": close({
		input?: string
		name?:  string
	})
}
