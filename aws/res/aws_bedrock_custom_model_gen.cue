package res

#aws_bedrock_custom_model: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bedrock_custom_model")
	close({
		base_model_identifier!:   string
		custom_model_arn?:        string
		custom_model_kms_key_id?: string
		custom_model_name!:       string
		customization_type?:      string
		hyperparameters!: [string]: string
		job_arn?:    string
		job_name!:   string
		job_status?: string
		output_data_config?: matchN(1, [#output_data_config, [...#output_data_config]])
		region?:   string
		role_arn!: string
		timeouts?: #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
		training_metrics?: [...close({
			training_loss?: number
		})]
		validation_metrics?: [...close({
			validation_loss?: number
		})]
		training_data_config?: matchN(1, [#training_data_config, [...#training_data_config]])
		validation_data_config?: matchN(1, [#validation_data_config, [...#validation_data_config]])
		vpc_config?: matchN(1, [#vpc_config, [...#vpc_config]])
	})

	#output_data_config: close({
		s3_uri!: string
	})

	#timeouts: close({
		create?: string
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
