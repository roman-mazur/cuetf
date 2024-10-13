package data

#aws_iot_registration_code: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iot_registration_code")
	id?:                string
	registration_code?: string
}
