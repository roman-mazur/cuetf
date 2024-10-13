package data

#aws_bedrock_custom_models: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_bedrock_custom_models")
	id?: string
	model_summaries?: [...{
		creation_time?: string
		model_arn?:     string
		model_name?:    string
	}]
}
