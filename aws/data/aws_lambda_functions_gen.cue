package data

#aws_lambda_functions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lambda_functions")
	close({
		function_arns?: [...string]
		function_names?: [...string]
		id?:     string
		region?: string
	})
}
