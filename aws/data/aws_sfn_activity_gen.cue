package data

#aws_sfn_activity: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sfn_activity")
	arn?:           string
	creation_date?: string
	id?:            string
	name?:          string
}
