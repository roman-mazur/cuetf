package res

#aws_lambda_function_recursion_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lambda_function_recursion_config")
	function_name!:  string
	recursive_loop!: string
}
