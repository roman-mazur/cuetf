package res

#aws_api_gateway_vpc_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_api_gateway_vpc_link")
	arn?:         string
	description?: string
	id?:          string
	name!:        string
	tags?: [string]:     string
	tags_all?: [string]: string
	target_arns!: [...string]
}
