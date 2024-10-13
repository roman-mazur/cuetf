package res

#aws_iot_thing: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iot_thing")
	arn?: string
	attributes?: [string]: string
	default_client_id?: string
	id?:                string
	name!:              string
	thing_type_name?:   string
	version?:           number
}
