package data

#aws_bedrock_inference_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrock_inference_profile")
	close({
		created_at?:             string
		description?:            string
		inference_profile_arn?:  string
		inference_profile_id!:   string
		inference_profile_name?: string
		models?: [...close({
			model_arn?: string
		})]
		region?:     string
		status?:     string
		type?:       string
		updated_at?: string
	})
}
