package data

#aws_batch_compute_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_batch_compute_environment")
	close({
		arn?:             string
		ecs_cluster_arn?: string
		id?:              string
		name!:            string
		region?:          string
		service_role?:    string
		state?:           string
		status?:          string
		status_reason?:   string
		tags?: [string]: string
		type?: string
		update_policy?: [...close({
			job_execution_timeout_minutes?: number
			terminate_jobs_on_update?:      bool
		})]
	})
}
