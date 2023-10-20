package data

#aws_lambda_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lambda_alias")
	arn?:              string
	description?:      string
	function_name:     string
	function_version?: string
	id?:               string
	invoke_arn?:       string
	name:              string
}
