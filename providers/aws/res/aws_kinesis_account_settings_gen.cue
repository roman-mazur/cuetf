package res

#aws_kinesis_account_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_kinesis_account_settings")
	close({
		minimum_throughput_billing_commitment?: matchN(1, [#minimum_throughput_billing_commitment, [...#minimum_throughput_billing_commitment]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#minimum_throughput_billing_commitment: close({
		earliest_allowed_end_at?: string
		ended_at?:                string
		started_at?:              string
		status!:                  string
		status_actual?:           string
	})
}
