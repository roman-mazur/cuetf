package res

#aws_batch_job_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_batch_job_queue")
	arn?:                   string
	id?:                    string
	name!:                  string
	priority!:              number
	scheduling_policy_arn?: string
	state!:                 string
	tags?: [string]: string
	tags_all?: [string]: string
	compute_environment_order?: #compute_environment_order | [...#compute_environment_order]
	job_state_time_limit_action?: #job_state_time_limit_action | [...#job_state_time_limit_action]
	timeouts?: #timeouts

	#compute_environment_order: {
		compute_environment!: string
		order!:               number
	}

	#job_state_time_limit_action: {
		action!:           string
		max_time_seconds!: number
		reason!:           string
		state!:            string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
