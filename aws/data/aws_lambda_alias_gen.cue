package data

#aws_lambda_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lambda_alias")
	close({
		arn?:              string
		description?:      string
		function_name!:    string
		function_version?: string
		id?:               string
		invoke_arn?:       string
		name!:             string
		region?:           string
	})
}
