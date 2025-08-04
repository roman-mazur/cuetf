package data

#aws_redshift_producer_data_shares: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_producer_data_shares")
	close({
		data_shares?: [...close({
			data_share_arn?: string
			managed_by?:     string
			producer_arn?:   string
		})]
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		producer_arn!: string
		status?:       string
	})
}
