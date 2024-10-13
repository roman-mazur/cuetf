package res

#aws_apigatewayv2_vpc_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_apigatewayv2_vpc_link")
	arn?:  string
	id?:   string
	name!: string
	security_group_ids!: [...string]
	subnet_ids!: [...string]
	tags?: [string]: string
	tags_all?: [string]: string
}
