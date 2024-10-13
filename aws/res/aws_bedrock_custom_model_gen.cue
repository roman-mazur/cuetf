package res

#aws_bedrock_custom_model: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_bedrock_custom_model")
	base_model_identifier!:   string
	custom_model_arn?:        string
	custom_model_kms_key_id?: string
	custom_model_name!:       string
	customization_type?:      string
	hyperparameters!: [string]: string
	id?:         string
	job_arn?:    string
	job_name!:   string
	job_status?: string
	role_arn!:   string
	tags?: [string]:     string
	tags_all?: [string]: string
	training_metrics?: [...{
		training_loss?: number
	}]
	validation_metrics?: [...{
		validation_loss?: number
	}]
	output_data_config?: #output_data_config | [...#output_data_config]
	timeouts?: #timeouts
	training_data_config?: #training_data_config | [...#training_data_config]
	validation_data_config?: #validation_data_config | [...#validation_data_config]
	vpc_config?: #vpc_config | [...#vpc_config]

	#output_data_config: s3_uri!: string

	#timeouts: {
		create?: string
		delete?: string
	}

	#training_data_config: s3_uri!: string

	#validation_data_config: {
		validator?: #validation_data_config.#validator | [...#validation_data_config.#validator]

		#validator: s3_uri!: string
	}

	#vpc_config: {
		security_group_ids!: [...string]
		subnet_ids!: [...string]
	}
}
