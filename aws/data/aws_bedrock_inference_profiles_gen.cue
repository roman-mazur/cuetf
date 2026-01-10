package data

#aws_bedrock_inference_profiles: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_bedrock_inference_profiles")
	close({
		inference_profile_summaries?: [...close({
			created_at?:             string
			description?:            string
			inference_profile_arn?:  string
			inference_profile_id?:   string
			inference_profile_name?: string
			models?: [...close({
				model_arn?: string
			})]
			status?:     string
			type?:       string
			updated_at?: string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		type?:   string
	})
}
