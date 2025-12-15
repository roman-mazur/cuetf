package data

#aws_bedrock_foundation_models: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_bedrock_foundation_models")
	close({
		by_customization_type?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		by_inference_type?:  string
		by_output_modality?: string
		by_provider?:        string
		id?:                 string
		model_summaries?: [...close({
			customizations_supported?: [...string]
			inference_types_supported?: [...string]
			input_modalities?: [...string]
			model_arn?:  string
			model_id?:   string
			model_name?: string
			output_modalities?: [...string]
			provider_name?:                string
			response_streaming_supported?: bool
		})]
	})
}
