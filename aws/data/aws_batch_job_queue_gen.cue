package data

#aws_batch_job_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_batch_job_queue")
	close({
		arn?: string
		compute_environment_order?: [...close({
			compute_environment?: string
			order?:               number
		})]
		id?: string
		job_state_time_limit_action?: [...close({
			action?:           string
			max_time_seconds?: number
			reason?:           string
			state?:            string
		})]
		name!:     string
		priority?: number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                string
		scheduling_policy_arn?: string
		state?:                 string
		status?:                string
		status_reason?:         string
		tags?: [string]: string
	})
}
