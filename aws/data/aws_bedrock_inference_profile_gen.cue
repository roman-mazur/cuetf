package data

#aws_bedrock_inference_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrock_inference_profile")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		created_at?:             string
		description?:            string
		inference_profile_arn?:  string
		inference_profile_id!:   string
		inference_profile_name?: string
		models?: [...close({
			model_arn?: string
		})]
		status?:     string
		type?:       string
		updated_at?: string
	})
}
