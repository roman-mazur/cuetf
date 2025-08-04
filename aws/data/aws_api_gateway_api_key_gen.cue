package data

#aws_api_gateway_api_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_api_key")
	close({
		arn?:          string
		created_date?: string
		customer_id?:  string
		description?:  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		enabled?:           bool
		id!:                string
		last_updated_date?: string
		name?:              string
		tags?: [string]: string
		value?: string
	})
}
