package res

#aws_iot_thing_principal_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iot_thing_principal_attachment")
	id?:       string
	principal: string
	thing:     string
}
