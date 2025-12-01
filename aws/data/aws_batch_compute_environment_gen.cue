package data

#aws_batch_compute_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_batch_compute_environment")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		ecs_cluster_arn?: string
		id?:              string
		name!:            string
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
