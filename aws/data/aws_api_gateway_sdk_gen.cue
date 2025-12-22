package data

#aws_api_gateway_sdk: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_api_gateway_sdk")
	close({
		body?:                string
		content_disposition?: string
		content_type?:        string
		id?:                  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		parameters?: [string]: string
		rest_api_id!: string
		sdk_type!:    string
		stage_name!:  string
	})
}
