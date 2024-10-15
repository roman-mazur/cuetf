package data

#aws_apigatewayv2_vpc_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apigatewayv2_vpc_link")
	arn?:  string
	id?:   string
	name?: string
	security_group_ids?: [...string]
	subnet_ids?: [...string]
	tags?: [string]: string
	vpc_link_id!: string
}
