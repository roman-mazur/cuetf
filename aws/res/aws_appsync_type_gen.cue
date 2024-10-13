package res

#aws_appsync_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_appsync_type")
	api_id!:      string
	arn?:         string
	definition!:  string
	description?: string
	format!:      string
	id?:          string
	name?:        string
}
