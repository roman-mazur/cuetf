package data

#aws_connect_contact_flow: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_connect_contact_flow")
	arn?:             string
	contact_flow_id?: string
	content?:         string
	description?:     string
	id?:              string
	instance_id!:     string
	name?:            string
	tags?: [string]: string
	type?: string
}
