package data

#aws_bedrock_foundation_models: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_bedrock_foundation_models")
	by_customization_type?: string
	by_inference_type?:     string
	by_output_modality?:    string
	by_provider?:           string
	id?:                    string
	model_summaries?: [...{
		customizations_supported?: [...string]
		inference_types_supported?: [...string]
		input_modalities?: [...string]
		model_arn?:  string
		model_id?:   string
		model_name?: string
		output_modalities?: [...string]
		provider_name?:                string
		response_streaming_supported?: bool
	}]
}
