package data

#aws_bedrock_foundation_model: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrock_foundation_model")
	close({
		customizations_supported?: [...string]
		id?: string
		inference_types_supported?: [...string]
		input_modalities?: [...string]
		model_arn?:  string
		model_id!:   string
		model_name?: string
		output_modalities?: [...string]
		provider_name?:                string
		region?:                       string
		response_streaming_supported?: bool
	})
}
