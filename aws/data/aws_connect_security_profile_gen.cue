package data

#aws_connect_security_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_connect_security_profile")
	arn?:                      string
	description?:              string
	id?:                       string
	instance_id!:              string
	name?:                     string
	organization_resource_id?: string
	permissions?: [...string]
	security_profile_id?: string
	tags?: [string]: string
}
