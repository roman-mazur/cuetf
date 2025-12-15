package res

#aws_redshift_usage_limit: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_redshift_usage_limit")
	close({
		amount!:             number
		arn?:                string
		breach_action?:      string
		cluster_identifier!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		feature_type!: string
		id?:           string
		limit_type!:   string
		period?:       string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
