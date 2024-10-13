package data

#aws_batch_compute_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_batch_compute_environment")
	arn?:                      string
	compute_environment_name!: string
	ecs_cluster_arn?:          string
	id?:                       string
	service_role?:             string
	state?:                    string
	status?:                   string
	status_reason?:            string
	tags?: [string]: string
	type?: string
	update_policy?: [...{
		job_execution_timeout_minutes?: number
		terminate_jobs_on_update?:      bool
	}]
}
