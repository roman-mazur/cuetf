package data

#aws_batch_scheduling_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_batch_scheduling_policy")
	close({
		arn!: string
		fair_share_policy?: [...close({
			compute_reservation?: number
			share_decay_seconds?: number
			share_distribution?: [...close({
				share_identifier?: string
				weight_factor?:    number
			})]
		})]
		id?:     string
		name?:   string
		region?: string
		tags?: [string]: string
	})
}
