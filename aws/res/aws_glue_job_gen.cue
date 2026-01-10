package res

import "list"

#aws_glue_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_glue_job")
	close({
		arn?: string
		connections?: [...string]
		default_arguments?: [string]: string
		description?:     string
		execution_class?: string
		glue_version?:    string
		id?:              string
		job_mode?:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		job_run_queuing_enabled?: bool
		command!: matchN(1, [#command, list.MaxItems(1) & [_, ...] & [...#command]])
		maintenance_window?: string
		execution_property?: matchN(1, [#execution_property, list.MaxItems(1) & [...#execution_property]])
		notification_property?: matchN(1, [#notification_property, list.MaxItems(1) & [...#notification_property]])
		max_capacity?: number
		source_control_details?: matchN(1, [#source_control_details, list.MaxItems(1) & [...#source_control_details]])
		max_retries?: number
		name!:        string
		non_overridable_arguments?: [string]: string
		number_of_workers?:      number
		role_arn!:               string
		security_configuration?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		timeout?:     number
		worker_type?: string
	})

	#command: close({
		name?:            string
		python_version?:  string
		runtime?:         string
		script_location!: string
	})

	#execution_property: close({
		max_concurrent_runs?: number
	})

	#notification_property: close({
		notify_delay_after?: number
	})

	#source_control_details: close({
		auth_strategy?:  string
		auth_token?:     string
		branch?:         string
		folder?:         string
		last_commit_id?: string
		owner?:          string
		provider?:       string
		repository?:     string
	})
}
