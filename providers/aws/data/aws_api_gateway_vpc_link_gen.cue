package data

#aws_api_gateway_vpc_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_api_gateway_vpc_link")
	close({
		arn?:         string
		description?: string
		id?:          string
		name!:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		status?:         string
		status_message?: string
		tags?: [string]: string
		target_arns?: [...string]
	})
}
