package data

#aws_bedrock_custom_models: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrock_custom_models")
	close({
		id?: string
		model_summaries?: [...close({
			creation_time?: string
			model_arn?:     string
			model_name?:    string
		})]
		region?: string
	})
}
