package data

#aws_batch_job_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_batch_job_queue")
	arn?: string
	compute_environment_order?: [...{
		compute_environment?: string
		order?:               number
	}]
	id?: string
	job_state_time_limit_action?: [...{
		action?:           string
		max_time_seconds?: number
		reason?:           string
		state?:            string
	}]
	name!:                  string
	priority?:              number
	scheduling_policy_arn?: string
	state?:                 string
	status?:                string
	status_reason?:         string
	tags?: [string]: string
}
