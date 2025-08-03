package data

#aws_cloudwatch_event_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_event_connection")
	close({
		arn?:                string
		authorization_type?: string
		id?:                 string
		kms_key_identifier?: string
		name!:               string
		region?:             string
		secret_arn?:         string
	})
}
