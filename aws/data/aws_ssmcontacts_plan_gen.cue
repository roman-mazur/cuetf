package data

#aws_ssmcontacts_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssmcontacts_plan")
	close({
		contact_id!: string
		id?:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		stage?: [...close({
			duration_in_minutes?: number
			target?: [...close({
				channel_target_info?: [...close({
					contact_channel_id?:        string
					retry_interval_in_minutes?: number
				})]
				contact_target_info?: [...close({
					contact_id?:   string
					is_essential?: bool
				})]
			})]
		})]
	})
}
