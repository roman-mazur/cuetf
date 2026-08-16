package data

aws_resiliencehubv2_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_resiliencehubv2_policy")
	close({
		arn!: string
		availability_slo?: [...close({
			target?: number
		})]
		data_recovery?: [...close({
			time_between_backups_in_minutes?: number
		})]
		description?: string
		kms_key_id?:  string
		multi_az?: [...close({
			disaster_recovery_approach?: string
			rpo_in_minutes?:             number
			rto_in_minutes?:             number
		})]
		multi_region?: [...close({
			disaster_recovery_approach?: string
			rpo_in_minutes?:             number
			rto_in_minutes?:             number
		})]
		name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]: string
	})
}
