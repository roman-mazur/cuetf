package res

#aws_api_gateway_usage_plan_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_usage_plan_key")
	close({
		id?:       string
		key_id!:   string
		key_type!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		name?:          string
		usage_plan_id!: string
		value?:         string
	})
}
