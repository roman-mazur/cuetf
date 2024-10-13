package res

import "list"

#aws_glue_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_glue_job")
	arn?: string
	connections?: [...string]
	default_arguments?: [string]: string
	description?:             string
	execution_class?:         string
	glue_version?:            string
	id?:                      string
	job_run_queuing_enabled?: bool
	maintenance_window?:      string
	max_capacity?:            number
	max_retries?:             number
	name!:                    string
	non_overridable_arguments?: [string]: string
	number_of_workers?:      number
	role_arn!:               string
	security_configuration?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	timeout?:     number
	worker_type?: string
	command?: #command | list.MaxItems(1) & [_, ...] & [...#command]
	execution_property?: #execution_property | list.MaxItems(1) & [...#execution_property]
	notification_property?: #notification_property | list.MaxItems(1) & [...#notification_property]

	#command: {
		name?:            string
		python_version?:  string
		runtime?:         string
		script_location!: string
	}

	#execution_property: max_concurrent_runs?: number

	#notification_property: notify_delay_after?: number
}
