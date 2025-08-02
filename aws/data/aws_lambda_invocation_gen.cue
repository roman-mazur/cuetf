package data

#aws_lambda_invocation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lambda_invocation")
	close({
		function_name!: string
		id?:            string
		input!:         string
		qualifier?:     string
		region?:        string
		result?:        string
	})
}
