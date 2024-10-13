package res

#aws_connect_lambda_function_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_connect_lambda_function_association")
	function_arn!: string
	id?:           string
	instance_id!:  string
}
