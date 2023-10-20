package data

#aws_batch_job_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_batch_job_queue")
	arn?: string
	compute_environment_order?: [...{
		compute_environment?: string
		order?:               number
	}]
	id?:                    string
	name:                   string
	priority?:              number
	scheduling_policy_arn?: string
	state?:                 string
	status?:                string
	status_reason?:         string
	tags?: [string]: string
}
