package res

#aws_lambda_function_recursion_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lambda_function_recursion_config")
	close({
		function_name!:  string
		recursive_loop!: string
		region?:         string
	})
}
