package res

#aws_iot_role_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iot_role_alias")
	alias!:               string
	arn?:                 string
	credential_duration?: number
	id?:                  string
	role_arn!:            string
	tags?: [string]: string
	tags_all?: [string]: string
}
