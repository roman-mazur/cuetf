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

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		name?:   string
		tags?: [string]: string
	})
}
