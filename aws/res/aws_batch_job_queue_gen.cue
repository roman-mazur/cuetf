package res

#aws_batch_job_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_batch_job_queue")
	close({
		arn?:  string
		name!: string
		compute_environment_order?: matchN(1, [#compute_environment_order, [...#compute_environment_order]])
		job_state_time_limit_action?: matchN(1, [#job_state_time_limit_action, [...#job_state_time_limit_action]])
		timeouts?:              #timeouts
		priority!:              number
		region?:                string
		scheduling_policy_arn?: string
		state!:                 string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#compute_environment_order: close({
		compute_environment!: string
		order!:               number
	})

	#job_state_time_limit_action: close({
		action!:           string
		max_time_seconds!: number
		reason!:           string
		state!:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
