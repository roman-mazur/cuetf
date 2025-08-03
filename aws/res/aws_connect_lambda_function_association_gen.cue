package res

#aws_connect_lambda_function_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_connect_lambda_function_association")
	close({
		function_arn!: string
		id?:           string
		instance_id!:  string
		region?:       string
	})
}
