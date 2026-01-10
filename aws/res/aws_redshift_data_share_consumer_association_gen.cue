package res

#aws_redshift_data_share_consumer_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_redshift_data_share_consumer_association")
	close({
		allow_writes?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		associate_entire_account?: bool
		consumer_arn?:             string
		consumer_region?:          string
		data_share_arn!:           string
		id?:                       string
		managed_by?:               string
		producer_arn?:             string
	})
}
