package res

#aws_bedrock_custom_model: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrock_custom_model")
	close({
		base_model_identifier!:   string
		custom_model_arn?:        string
		custom_model_kms_key_id?: string
		custom_model_name!:       string
		customization_type?:      string
		hyperparameters!: [string]: string
		job_arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		job_name!:   string
		job_status?: string
		output_data_config?: matchN(1, [#output_data_config, [...#output_data_config]])
		timeouts?: #timeouts
		role_arn!: string
		training_data_config?: matchN(1, [#training_data_config, [...#training_data_config]])
		tags?: [string]: string
		validation_data_config?: matchN(1, [#validation_data_config, [...#validation_data_config]])
		tags_all?: [string]: string
		vpc_config?: matchN(1, [#vpc_config, [...#vpc_config]])
		training_metrics?: [...close({
			training_loss?: number
		})]
		validation_metrics?: [...close({
			validation_loss?: number
		})]
	})

	#output_data_config: close({
		s3_uri!: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string
	})

	#training_data_config: close({
		s3_uri!: string
	})

	#validation_data_config: close({
		validator?: matchN(1, [_#defs."/$defs/validation_data_config/$defs/validator", [..._#defs."/$defs/validation_data_config/$defs/validator"]])
	})

	#vpc_config: close({
		security_group_ids!: [...string]
		subnet_ids!: [...string]
	})

	_#defs: "/$defs/validation_data_config/$defs/validator": close({
		s3_uri!: string
	})
}
