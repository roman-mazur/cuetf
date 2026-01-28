package data

#aws_apigatewayv2_vpc_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_apigatewayv2_vpc_link")
	close({
		arn?:  string
		id?:   string
		name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		security_group_ids?: [...string]
		subnet_ids?: [...string]
		tags?: [string]: string
		vpc_link_id!: string
	})
}
