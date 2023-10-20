package res

#aws_batch_job_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_batch_job_queue")
	arn?: string
	compute_environments: [...string]
	id?:                    string
	name:                   string
	priority:               number
	scheduling_policy_arn?: string
	state:                  string
	tags?: [string]: string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
