package data

#aws_bedrock_custom_model: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrock_custom_model")
	close({
		base_model_arn?: string
		creation_time?:  string
		hyperparameters?: [string]: string
		id?:       string
		job_arn?:  string
		job_name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		job_tags?: [string]: string
		model_arn?:         string
		model_id!:          string
		model_kms_key_arn?: string
		model_name?:        string
		model_tags?: [string]: string
		output_data_config?: [...close({
			s3_uri?: string
		})]
		training_data_config?: [...close({
			s3_uri?: string
		})]
		training_metrics?: [...close({
			training_loss?: number
		})]
		validation_data_config?: [...close({
			validator?: [...close({
				s3_uri?: string
			})]
		})]
		validation_metrics?: [...close({
			validation_loss?: number
		})]
	})
}
