package data

#aws_api_gateway_vpc_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_vpc_link")
	description?:    string
	id?:             string
	name!:           string
	status?:         string
	status_message?: string
	tags?: [string]: string
	target_arns?: [...string]
}
