package res

#aws_lambda_runtime_management_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lambda_runtime_management_config")
	function_arn?:        string
	function_name!:       string
	qualifier?:           string
	runtime_version_arn?: string
	update_runtime_on?:   string
}
